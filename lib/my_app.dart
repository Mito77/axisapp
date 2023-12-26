import 'dart:io';
import 'package:axisapp/main.dart';
import 'package:axisapp/utilities/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';
import 'models/app_helper.dart';

class MyApp extends StatefulWidget {
  final Widget startWidget;

  MyApp({required this.startWidget});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    main();
  }

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
    designSize: const Size(375, 667),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) {
      return changeNotifierProvider;
    },
  );

  ChangeNotifierProvider<AppHelper> get changeNotifierProvider =>
      ChangeNotifierProvider<AppHelper>.value(
          value: AppHelper(),
          child: Consumer<AppHelper>(
            builder: (context, value, child) => mediaQuery(context),
          ));

  MediaQuery mediaQuery(BuildContext context) =>
      MediaQuery(data: MediaQueryData(), child: materialApp(context));

  MaterialApp materialApp(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'abela',
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    locale:   Locale('${SharedPRefHelper().getLanguage}', ''),
    supportedLocales: S.delegate.supportedLocales,

    home: widget.startWidget,
  );
}
