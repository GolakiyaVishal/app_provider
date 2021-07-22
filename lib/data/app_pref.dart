import 'package:shared_preferences/shared_preferences.dart';

class AppPref {
  SharedPreferences _preferences;
  Future _isAppPrefReady;

  static final AppPref _instance = AppPref._internal();

  factory AppPref() => _instance;

  AppPref._internal(){
    _isAppPrefReady =  SharedPreferences.getInstance().then((value){
      _preferences = value;
    });
  }

  Future get isAppPreferenceReady => _isAppPrefReady;

  void setToken(String value) => _preferences.setString('access_token', value);

  String getToken() => _preferences.getString('access_token');

}