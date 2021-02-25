import 'package:app_provider/common/lang/Languages.dart';
import 'package:app_provider/common/lang/language_provider.dart';
import 'package:app_provider/presentation/screen_providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_provider/common/lang/lang.dart';

class HomePage extends StatelessWidget {
  int langIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('language'.tr(context)),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () => toggleLanguage(context),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'feedback'.tr(context),
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              context.watch<HomeProvider>().counter.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<HomeProvider>().incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  toggleLanguage(BuildContext context) {
    context
        .read<LanguageProvider>()
        .setLocal(
      context.read<LanguageProvider>().local.languageCode ==
          Languages.languages[0].code
          ? Languages.languages[1].code
          : Languages.languages[0].code
    );
  }
}
