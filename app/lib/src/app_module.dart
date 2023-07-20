import 'package:flutter_modular/flutter_modular.dart';
//
import 'contatos/contatos_module.dart';
import 'inicio/inicio_module.dart';

class AppModule extends Module {
  @override
  // TODO(sid-tec): implement binds
  List<Bind<Object>> get binds => InicioModule().binds;

  @override
// TODO(sid-tec): implement routes
  List<ModularRoute> get routes => [
        ModuleRoute('/inicio', module: InicioModule()),
        ModuleRoute('/contatos', module: ContatosModule()),
      ];
}
