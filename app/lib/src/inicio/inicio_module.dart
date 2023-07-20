import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';
import 'package:secretaria/src/inicio/services/config_service.dart';
//
import '../shared/services/realm/realm_config.dart';
import 'pages/config_page.dart';
import 'pages/inicio_page.dart';
import 'pages/sync_page.dart';
import 'stores/inicio_store.dart';

class InicioModule extends Module {
  @override
  // TODO(sid-tec): implement binds
  List<Bind<Object>> get binds => [
        Bind.instance<Realm>(Realm(realmConfig)),
        Bind.factory<ConfigServiceInterface>(
          (i) => ConfigService(Realm(realmConfig)),
        ),
        Bind.singleton(
          (i) => InicioStore(
            ConfigService(Realm(realmConfig)),
          ),
        ),
        //AutoBind.singleton(InicioStore.new),
      ];

  @override
  // TODO(sid-tec): implement routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const InicioPage()),
        ChildRoute(
          '/configuracao',
          child: (context, args) => const ConfigPage(),
        ),
        ChildRoute('/sincronizar', child: (context, args) => const SyncPage()),
      ];
}
