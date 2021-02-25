import 'package:app_provider/common/common.dart';
import 'package:app_provider/common/lang/lang.dart';
import 'package:app_provider/presentation/screen_providers/home_provider.dart';
import 'package:app_provider/presentation/themes/app_theme.dart';
import 'package:app_provider/presentation/themes/theme_provider.dart';
import 'package:app_provider/presentation/themes/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'screens/home_page.dart';

class ProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        title: 'Provider App',

        //> multiple theme
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: context.read<ThemeProvider>().themeMode,

        //> localization
        supportedLocales:
            Languages.languages.map((e) => Locale(e.code)).toList(),
        locale: context.watch<LanguageProvider>().local,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],

        home: HomePage(),
      ),
    );
  }
}
