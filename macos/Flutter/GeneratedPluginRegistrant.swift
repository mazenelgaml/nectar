//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

<<<<<<< Updated upstream

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
=======
import emoji_picker_flutter
import file_selector_macos
import firebase_core
import shared_preferences_foundation

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  EmojiPickerFlutterPlugin.register(with: registry.registrar(forPlugin: "EmojiPickerFlutterPlugin"))
  FileSelectorPlugin.register(with: registry.registrar(forPlugin: "FileSelectorPlugin"))
  FLTFirebaseCorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseCorePlugin"))
  SharedPreferencesPlugin.register(with: registry.registrar(forPlugin: "SharedPreferencesPlugin"))
>>>>>>> Stashed changes
}
