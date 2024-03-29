import 'package:app_provider/common/lang/language_provider.dart';
import 'package:app_provider/data/app_pref.dart';
import 'package:app_provider/presentation/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/provider_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPref().isAppPreferenceReady;

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<LanguageProvider>(
          create: (_) => LanguageProvider()),
      ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider()),
    ],
    child: ProviderApp(),
  ));
}
