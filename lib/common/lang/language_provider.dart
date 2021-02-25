import 'package:app_provider/common/lang/Languages.dart';
import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _local = Locale(Languages.languages[0].code);

  Locale get local => _local;

  void setLocal(String code) {
    _local = Locale(code);
    notifyListeners();
  }
}