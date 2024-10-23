// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// abstract class StorageKeys {
//   StorageKeys();
//   static const String activeLocale = "ACTIVE_LOCAL";
//   static const String userId = "User_Id";
//   static const String userToken = "token";
//   static const String userName = "User_Name";
// }
//
// class StorageService extends GetxService {
//   StorageService(this._prefs);
//
//   final SharedPreferences _prefs;
//
//   static Future<StorageService> init() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     return StorageService(prefs);
//   }
//
//   // To save id of the account
//   Future<void> saveAccountId(String userId) async =>
//       _prefs.setString(StorageKeys.userId, userId);
//   Future<void> saveAccountToken(String userToken) async =>
//       _prefs.setString(StorageKeys.userToken, userToken);
//   Future<void> saveAccountName(String userName) async =>
//       _prefs.setString(StorageKeys.userName, userName);
//
//   String get getId {
//     return _prefs.getString(StorageKeys.userId) ?? "0";
//   }
//
//   String get getToken {
//     return _prefs.getString(StorageKeys.userToken) ?? "0";
//   }
//
//   String get userName {
//     return _prefs.getString(StorageKeys.userName) ?? " ";
//   }
//
//   void loggingOut() {
//     _prefs.remove(StorageKeys.userId);
//   }
//
//   // To check if user record dismissal or not
//   bool get checkUserIsSignedIn {
//     return _prefs.containsKey(StorageKeys.userId);
//   }
//
//   // Active Locale
//
//   set activeLocale(Locale activeLocal) {
//     _prefs.setString(StorageKeys.activeLocale, activeLocal.toString());
//   }
// }
//
// void main() async {
//   // Ensure all Flutter bindings are initialized
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // Initialize the StorageService and wait for it
//   final storageService = await StorageService.init();
//
//   // Put the StorageService instance in GetX dependency injection system
//   Get.put(storageService);
//
//   // Now you can use StorageService
//   // For example:
//   final storage = Get.find<StorageService>();
//   print(storage.getId); // Example usage
// }