import 'package:hoe/hoe.dart';
import 'package:logging/logging.dart';
import 'package:loki/models/config.dart';
import 'package:loki/services/logger.dart';

/// The Loki manager.
class LokiManagerService implements HOEServiceInterface {
  /// Creates a new [LokiManagerService] instance.
  ///
  /// - [lokiConfigModel]: The configuration for the logger.
  LokiManagerService({
    required LokiConfigModel lokiConfigModel,
  }) {
    _lokiConfigModel = lokiConfigModel;
    _configureLokiLoggerService(_lokiConfigModel, Logger.root);
    _lokiLoggerService = LokiLoggerService(
      logger: Logger.root,
    );
  }

  /// The Loki config.
  late final LokiConfigModel _lokiConfigModel;

  /// The root Loki logger.
  late final LokiLoggerService _lokiLoggerService;

  /// Getter for the root Loki logger.
  LokiLoggerService get lokiLoggerService => _lokiLoggerService;

  /// Configures the logger.
  void _configureLokiLoggerService(
    LokiConfigModel lokiConfigModel,
    Logger logger,
  ) {
    logger.level = lokiConfigModel.level.toLevel();
    logger.clearListeners();

    // TODO(ol-shivam-pawar): Get the action from the config.
    logger.onRecord.listen((LogRecord record) {
      // Because we need to print the log to the console for now.
      // ignore: avoid_print
      print(
        '[${record.level.name}][${record.time.toIso8601String()}][${record.sequenceNumber}] ${record.message}',
      );
    });
  }

  /// Creates a new [LokiLoggerService] instance.
  ///
  /// - [name]: The name of the logger.
  ///
  /// Returns a [LokiLoggerService] configured with the given name.
  LokiLoggerService createLokiLoggerService(
    String name,
  ) {
    final Logger logger = Logger(name);
    // Don't configure the logger here - child loggers automatically
    // propagate to Logger.root which is already configured
    return LokiLoggerService(
      logger: logger,
    );
  }
}
