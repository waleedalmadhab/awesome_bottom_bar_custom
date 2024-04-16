#ifndef FLUTTER_PLUGIN_AWESOME_BOTTOM_BAR_CUSTOM_PLUGIN_H_
#define FLUTTER_PLUGIN_AWESOME_BOTTOM_BAR_CUSTOM_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace awesome_bottom_bar_custom {

class AwesomeBottomBarCustomPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AwesomeBottomBarCustomPlugin();

  virtual ~AwesomeBottomBarCustomPlugin();

  // Disallow copy and assign.
  AwesomeBottomBarCustomPlugin(const AwesomeBottomBarCustomPlugin&) = delete;
  AwesomeBottomBarCustomPlugin& operator=(const AwesomeBottomBarCustomPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace awesome_bottom_bar_custom

#endif  // FLUTTER_PLUGIN_AWESOME_BOTTOM_BAR_CUSTOM_PLUGIN_H_
