import 'package:flutter_modular/flutter_modular.dart';
//
import 'contatos_page.dart';
import 'detalhes_page.dart';

class ContatosModule extends Module {
  @override
  // TODO(sid-tec): implement routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ContatosPage()),
        ChildRoute('/detalhes', child: (context, args) => const DetalhesPage()),
      ];
}
