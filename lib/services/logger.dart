import 'package:hoe/hoe.dart';
import 'package:logging/logging.dart';
import 'package:loki/enums/level.dart';

/// A logger that maps to the logging logger.
class LokiLoggerService implements HOEServiceInterface {
  /// Creates a new [LokiLoggerService] instance.
  ///
  /// - [logger]: The underlying logging logger.
  LokiLoggerService({
    required Logger logger,
  }) {
    _logger = logger;
  }

  /// The logging logger.
  late final Logger _logger;

  /// Logs a message with the [LokiLevel.shout] level.
  ///
  /// - [message]: The message to log.
  /// - [error]: The error object to log.
  /// - [stackTrace]: The stack trace to log.
  void sh(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.shout(message, error, stackTrace);
  }

  /// Logs a message with the [LokiLevel.severe] level.
  ///
  /// - [message]: The message to log.
  /// - [error]: The error object to log.
  /// - [stackTrace]: The stack trace to log.
  void sv(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.severe(message, error, stackTrace);
  }

  /// Logs a message with the [LokiLevel.warning] level.
  ///
  /// - [message]: The message to log.
  void wn(
    String message,
  ) {
    _logger.warning(message);
  }

  /// Logs a message with the [LokiLevel.info] level.
  ///
  /// - [message]: The message to log.
  void ino(
    String message,
  ) {
    _logger.info(message);
  }

  /// Logs a message with the [LokiLevel.fine] level.
  ///
  /// - [message]: The message to log.
  void fne(
    String message,
  ) {
    _logger.fine(message);
  }

  /// Logs a message with the [LokiLevel.finer] level.
  ///
  /// - [message]: The message to log.
  void fnr(
    String message,
  ) {
    _logger.finer(message);
  }

  /// Logs a message with the [LokiLevel.finest] level.
  ///
  /// - [message]: The message to log.
  void fst(
    String message,
  ) {
    _logger.finest(message);
  }
}
