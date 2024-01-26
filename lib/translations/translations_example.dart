import 'package:flutter/material.dart';
import 'package:flutter_internationalization/translations/messages.dart';
import 'package:flutter_internationalization/translations/translations_view.dart';
import 'package:get/get.dart';

class TranslationExample extends StatelessWidget {
  const TranslationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // use custom translations
      translations: Messages(),
      // translations will be displayed in that locale
      //locale: const Locale('en', 'US'),
      // system locale
      locale: Get.deviceLocale,
      // specify the fallback locale in case an invalid locale is selected.
      fallbackLocale: const Locale('en', 'US'),
      home: Example(),
    );
  }
}
