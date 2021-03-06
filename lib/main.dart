import 'package:flutter/material.dart';
import 'package:newprovider247/pages/home_page.dart';
import 'package:newprovider247/pages/open_webview.dart';
import 'package:newprovider247/pages/splash_screen_page.dart';
import 'package:newprovider247/provider/NewsProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => NewsProvider())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // primarySwatch: Color(0xffF78B00) as MaterialColor,
        ),
        initialRoute: SplashScreenPage.routeName,
        routes: {
          HomePage.routeName: (context) => HomePage(),
          SplashScreenPage.routeName: (context) => SplashScreenPage(),
          OpenWebView.routeName: (context) => OpenWebView()
        },
      ),
    );
  }
}
