import 'package:shared_preferences/shared_preferences.dart';

class Sessiondata {
  static bool? isLogin;
  static String? emailId;
  static String? userName;

  static Future<void> storeSessionData({
    required bool loginData,
    required String emailId,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setBool("loginSession", loginData);
    sharedPreferences.setString("email", emailId);

    getSessionData();
  }

  static Future<void> getSessionData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    isLogin = sharedPreferences.getBool("loginSession") ?? false;
    emailId = sharedPreferences.getString("email") ?? "";
  }

  static Future<void> storeUserDetail({required String userName}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString("userName", userName);
    getSessionData();
  }

  static Future<void> getUserDetail() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    userName = sharedPreferences.getString("userName");
  }
}
