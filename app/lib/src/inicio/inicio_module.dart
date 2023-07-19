import 'package:flutter_modular/flutter_modular.dart';
//
import 'pages/config_page.dart';
import 'pages/inicio_page.dart';
import 'pages/sinc_page.dart';
import 'stores/inicio_store.dart';

class InicioModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => InicioStore()),
        //AutoBind.singleton(InicioStore.new),
      ];

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const InicioPage()),
        ChildRoute('/config', child: (context, args) => const ConfigPage()),
        ChildRoute('/sinc', child: (context, args) => const SincPage()),
      ];
}
