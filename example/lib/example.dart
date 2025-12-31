import 'package:flutter/material.dart';
import 'package:loki/enums/level.dart';
import 'package:loki/models/config.dart';
import 'package:loki/services/logger.dart';
import 'package:loki/services/manager.dart';

/// An example of the Loki logger.
class LokiExampleWidget extends StatelessWidget {
  /// Creates a [LokiExampleWidget] widget.
  ///
  /// - [key]: The widget key.
  LokiExampleWidget({
    super.key,
  }) {
    _lokiConfigModel = LokiConfigModel(
      level: LokiLevel.info,
    );
    _lokiManagerService = LokiManagerService(
      lokiConfigModel: _lokiConfigModel,
    );

    _lokiLoggerService = _lokiManagerService.lokiLoggerService;
  }

  /// The Loki config.
  late final LokiConfigModel _lokiConfigModel;

  /// The Loki manager.
  late final LokiManagerService _lokiManagerService;

  /// The Loki logger.
  late final LokiLoggerService _lokiLoggerService;

  /// Builds the widget tree.
  ///
  /// - [context]: The build context.
  ///
  /// Returns a [Widget] displaying the example UI.
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loki Example',
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text(
              'SHOUT',
            ),
            onTap: () {
              _lokiLoggerService.sh(
                'This is a shout message.',
              );
            },
          ),
          ListTile(
            title: const Text(
              'SEVERE',
            ),
            onTap: () {
              _lokiLoggerService.sv(
                'This is a severe message.',
              );
            },
          ),
          ListTile(
            title: const Text(
              'WARNING',
            ),
            onTap: () {
              _lokiLoggerService.wn(
                'This is a warning message.',
              );
            },
          ),
          ListTile(
            title: const Text(
              'INFO',
            ),
            onTap: () {
              _lokiLoggerService.ino(
                'This is a info message.',
              );
            },
          ),
          ListTile(
            title: const Text(
              'FINE',
            ),
            onTap: () {
              _lokiLoggerService.fne(
                'This is a fine message.',
              );
            },
          ),
          ListTile(
            title: const Text(
              'FINER',
            ),
            onTap: () {
              _lokiLoggerService.fnr(
                'This is a finer message.',
              );
            },
          ),
          ListTile(
            title: const Text(
              'FINEST',
            ),
            onTap: () {
              _lokiLoggerService.fst(
                'This is a finest message.',
              );
            },
          ),
        ],
      ),
    );
  }
}
