import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
//
import '../stores/inicio_store.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    //
    final inicioStore = context.watch<InicioStore>(
      (store) => store.themeMode,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuração'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(28, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tema de Cores',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            RadioListTile<ThemeMode>(
              title: const Text('Sistema'),
              value: ThemeMode.system,
              groupValue: inicioStore.themeMode.value,
              onChanged: inicioStore.changeThemeMode,
            ),
            RadioListTile<ThemeMode>(
              title: const Text('Claro'),
              value: ThemeMode.light,
              groupValue: inicioStore.themeMode.value,
              onChanged: inicioStore.changeThemeMode,
            ),
            RadioListTile<ThemeMode>(
              title: const Text('Escuro'),
              value: ThemeMode.dark,
              groupValue: inicioStore.themeMode.value,
              onChanged: inicioStore.changeThemeMode,
            ),
            const SizedBox(height: 30),
            Text(
              'Controle de dados',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Limpar Cache e Reiniciar'),
            ),
          ],
        ),
      ),
    );
  }
}
