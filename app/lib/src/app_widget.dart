import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
//
import 'shered/themes/themes.dart';

//TODO: mover app title para arquivo de config JSON
const _appTitle = 'Secretaria';
//TODO: mover initial route para arquivo de config JSON
const _initRoute = '/home/';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //
    Modular.setInitialRoute(_initRoute);

    return MaterialApp.router(
      title: _appTitle,
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
