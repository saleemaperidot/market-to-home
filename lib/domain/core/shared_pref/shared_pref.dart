import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static SharedPreferences? _prefs;

  static const userId = 'customerId';
  static const authToken = 'authToken';
  static const deviceType = 'deviceType';
  static const fcmToken = 'fcmToken';
  static const email = 'email';
  static const password = 'password';
  static const userName = 'userName';
  static const phone = 'phone';
  static const lat = 'lat';
  static const long = 'long';
  static const locationAddress = 'locationAddress';
  static const firstName = 'firstName';
  static const lastName = 'lastName';
  static const apartment = 'apartment';
  static const flatNo = 'flatNo';
  static const street = 'street';
  static const referralCode = 'referralCode';
  static const isLogedIn = 'isLogedIn';

  static Future<SharedPreferences> get instance async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  static Future<bool> setString(String key, String value) async {
    final prefs = await instance;
    return prefs.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    final prefs = await instance;
    return prefs.getString(key);
  }

  // Add more methods for handling other data types as needed
}
