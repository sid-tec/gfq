import 'package:flutter_modular/flutter_modular.dart';
//
import 'config/config_page.dart';
import 'home/home_module.dart';
import 'sinc/sinc_page.dart';

class AppModule extends Module {
  @override
// TODO: implement routes
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ChildRoute('/config', child: (context, args) => const ConfigPage()),
        ChildRoute('/sinc', child: (context, args) => const SincPage()),
      ];
}
