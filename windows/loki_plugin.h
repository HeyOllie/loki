#ifndef FLUTTER_PLUGIN_LOKI_PLUGIN_H_
#define FLUTTER_PLUGIN_LOKI_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace loki {

class LokiPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  LokiPlugin();

  virtual ~LokiPlugin();

  // Disallow copy and assign.
  LokiPlugin(const LokiPlugin&) = delete;
  LokiPlugin& operator=(const LokiPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace loki

#endif  // FLUTTER_PLUGIN_LOKI_PLUGIN_H_
