// import 'package:donut_shop/pages/landing.dart';
import 'package:donut_shop/pages/landing.dart';
import 'package:donut_shop/pages/splash.dart';
import 'package:donut_shop/services/bottombar_service.dart';
import 'package:donut_shop/services/donutbar_service.dart';
import 'package:donut_shop/utility/constants.dart';
// import 'package:donut_shop/widgets/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DonutBottomBarSelectionService()
        ),
        ChangeNotifierProvider(
          create: (_) => DonutService()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        navigatorKey: Utils.mainAppNav,
        routes: {
          '/': (context) => SplashPage(),
          '/main': (context) => DonutShopMain()
        }
      ),
    ), 
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
