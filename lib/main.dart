import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants.dart';
import 'package:food_delivery_app/views/splash_page.dart';

import 'router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'kantumruy_pro',
        primaryColor: primaryColor,
        colorScheme: ColorScheme.light(
            primary: primaryColor,
            secondary: secondaryColor,
            tertiary: tertiaryColor),
        // scaffoldBackgroundColor: Colors.blueGrey[50],
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: neutral5Color),
        // buttonTheme: ButtonThemeData(
        //   buttonColor: primaryColor,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(36),
        //   ),
        // ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            textStyle: Theme.of(context).textTheme.button!.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 15,
            ),
          ),
        ),
      ),
      initialRoute: SplashPage.routeMame,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
