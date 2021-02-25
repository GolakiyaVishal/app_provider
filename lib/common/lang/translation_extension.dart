import 'package:app_provider/common/lang/app_localizations.dart';
import 'package:flutter/material.dart';

extension TranslationExtension on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context).translate(this);
  }
}