#include "include/awesome_bottom_bar_custom/awesome_bottom_bar_custom_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "awesome_bottom_bar_custom_plugin.h"

void AwesomeBottomBarCustomPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  awesome_bottom_bar_custom::AwesomeBottomBarCustomPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
