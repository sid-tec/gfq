import 'package:flutter_modular/flutter_modular.dart';
//
import 'edit_page.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/edit', child: (context, args) => const EditPage()),
      ];
}
