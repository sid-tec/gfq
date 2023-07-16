import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'shered/themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sec GFQ',
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
