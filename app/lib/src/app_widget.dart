import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
//
import 'inicio/stores/inicio_store.dart';
import 'shared/themes/themes.dart';

// TODO(sid-tec): move to JASON config file
const _appTitle = 'Secretaria';
const _initRoute = '/inicio/';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //
    Modular.setInitialRoute(_initRoute);
    //
    final inicioStore = context.watch<InicioStore>(
      (store) => store.themeMode,
    );
    return MaterialApp.router(
      title: _appTitle,
      debugShowCheckedModeBanner: false,
      themeMode: inicioStore.themeMode.value,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
