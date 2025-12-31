import 'package:logging/logging.dart';

/// The level of a log message.
enum LokiLevel {
  /// The log level for shout messages.
  shout,

  /// The log level for severe messages.
  severe,

  /// The log level for warning messages.
  warning,

  /// The log level for info messages.
  info,

  /// The log level for config messages.
  config,

  /// The log level for finest messages.
  finest,

  /// The log level for finer messages.
  finer,

  /// The log level for fine messages.
  fine,

  /// The log level for all messages.
  all,

  /// The log level for off messages.
  off
  ;

  /// Converts this [LokiLevel] enum to the corresponding [Level].
  ///
  /// Returns a [Level] corresponding to this [LokiLevel].
  Level toLevel() {
    switch (this) {
      case LokiLevel.shout:
        return Level.SHOUT;
      case LokiLevel.severe:
        return Level.SEVERE;
      case LokiLevel.warning:
        return Level.WARNING;
      case LokiLevel.info:
        return Level.INFO;
      case LokiLevel.config:
        return Level.CONFIG;
      case LokiLevel.finest:
        return Level.FINEST;
      case LokiLevel.finer:
        return Level.FINER;
      case LokiLevel.fine:
        return Level.FINE;
      case LokiLevel.all:
        return Level.ALL;
      case LokiLevel.off:
        return Level.OFF;
    }
  }

  /// Returns a [String] representation of this [LokiLevel].
  @override
  String toString() {
    return 'LokiLevel.$name';
  }
}
