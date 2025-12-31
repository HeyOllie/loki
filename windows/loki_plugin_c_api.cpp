#include "include/loki/loki_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "loki_plugin.h"

void LokiPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  loki::LokiPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
