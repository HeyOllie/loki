import 'package:hoe/hoe.dart';
import 'package:loki/enums/level.dart';

/// Configuration for the Loki logger.
class LokiConfigModel implements HOEModelInterface {
  /// Creates a new [LokiConfigModel] instance.
  ///
  /// - [level]: The minimum log level to log.
  /// - [enableTimestamp]: Whether to enable timestamp in the log message.
  LokiConfigModel({
    required this.level,
    this.enableTimestamp = true,
  });

  /// The minimum log level to log.
  final LokiLevel level;

  /// Whether to enable timestamp in the log message.
  final bool enableTimestamp;

  /// Returns a [String] representation of this [LokiConfigModel].
  @override
  String toString() {
    return 'LokiConfigModel(level: $level, enableTimestamp: $enableTimestamp)';
  }
}
