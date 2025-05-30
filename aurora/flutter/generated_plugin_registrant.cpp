//
//  Generated file. Do not edit.
//
#include <flutter/flutter_aurora.h>
#include <connectivity_plus_aurora/connectivity_plus_aurora_plugin.h>
#include <isar_flutter_libs/isar_flutter_libs_plugin.h>
#include <media_kit_video_aurora/media_kit_video_aurora_plugin.h>
#include <package_info_plus_aurora/package_info_plus_aurora_plugin.h>
#include <path_provider_aurora/path_provider_aurora_plugin.h>
#include <url_launcher_aurora/url_launcher_aurora_plugin.h>

#include "generated_plugin_registrant.h"

namespace aurora {
void RegisterPlugins() {
  flutter::PluginRegistrar* registrar = GetPluginRegistrar();
  ConnectivityPlusAuroraPlugin::RegisterWithRegistrar(registrar);
  IsarFlutterLibsPlugin::RegisterWithRegistrar(registrar);
  MediaKitVideoAuroraPlugin::RegisterWithRegistrar(registrar);
  PackageInfoPlusAuroraPlugin::RegisterWithRegistrar(registrar);
  PathProviderAuroraPlugin::RegisterWithRegistrar(registrar);
  UrlLauncherAuroraPlugin::RegisterWithRegistrar(registrar);
}
}
