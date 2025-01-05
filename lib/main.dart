import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';
import 'package:whatsappui/responsive/responsive_layout.dart';
import 'package:whatsappui/screens/mobile_layout.dart';
import 'package:whatsappui/screens/web_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.dark(
          primary: tabColor,
          secondary: tabColor,
          // surface: backgroundColor,
          onSurface: textColor,
          onPrimary: textColor,
          onSecondary: textColor,
          error: Colors.red,
          onError: Colors.red,
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: appBarColor,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: ResponsiveLayout(
        mobileLayout: MobileLayout(),
        webLayout: WebLayout(),
      ),
    );
  }
}
