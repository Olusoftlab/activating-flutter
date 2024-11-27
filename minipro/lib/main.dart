import "package:flutter/material.dart";

import "package:minipro/pages/login.dart";
import "package:minipro/pages/register.dart";
import "package:minipro/pages/dashboard.dart";
import "package:minipro/pages/aliyu.dart";
import "package:minipro/pages/ola.dart";

void main() {
  runApp(const MainEntry());
}

class MainEntry extends StatelessWidget {
  const MainEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "mobile banking",
        theme: ThemeData(
          primaryColor: Colors.teal,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
              .copyWith(secondary: Colors.teal),

          textTheme: const TextTheme(
              headlineMedium: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
              bodyMedium: TextStyle(fontSize: 20, color: Colors.black)),

          buttonTheme: const ButtonThemeData(
              buttonColor: Colors.teal, textTheme: ButtonTextTheme.primary),
          //styling for modern elevated buttons
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal)),
        ),
        darkTheme: ThemeData.dark().copyWith(
            primaryColor:
                Colors.teal, //setting teal as the primary color for dark theme

            colorScheme: ColorScheme.fromSwatch(
                    primarySwatch: Colors
                        .teal //setting teal as the main color for dark theme

                    )
                .copyWith(
                    secondary: Colors
                        .tealAccent // setting tealAccent as the secondary color in dark theme
                    ),
            textTheme: const TextTheme(
                headlineMedium: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
                bodyMedium: TextStyle(fontSize: 20, color: Colors.white)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal))),
        themeMode: ThemeMode.system,
        initialRoute: "/",
        routes: {
          "/": (context) => const LoginPage(),
          "/register": (context) => const RegisterPage(),
          "/dashboard": (context) => const DashBoardPage(),
          "/ola-info": (context) => const OlaPage(),
          "/aliyu-info": (context) => const AliyuPage()
        });
  }
}
