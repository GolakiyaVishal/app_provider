import 'package:app_provider/common/common.dart';
import 'package:app_provider/presentation/screen_providers/home_provider.dart';
import 'package:app_provider/presentation/themes/theme_text.dart';
import 'package:flutter/material.dart';
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
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: ThemeText.getTextTheme()
        ),
        home: HomePage(title: 'Home Page'),
      ),
    );
  }
}
