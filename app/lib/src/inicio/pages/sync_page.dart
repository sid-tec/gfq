import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
//
import '../stores/inicio_store.dart';

class SyncPage extends StatefulWidget {
  const SyncPage({super.key});

  @override
  State<SyncPage> createState() => _SyncPageState();
}

class _SyncPageState extends State<SyncPage> {
  @override
  Widget build(BuildContext context) {
    //
    final inicioStore = context.watch<InicioStore>(
      (store) => store.themeMode,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sincronização'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(28, 16, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ultima Sincronização foi ${inicioStore.syncDate.value}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                inicioStore.setSyncDate(DateTime.now());
              },
              child: const Text('Sincronizar'),
            ),
          ],
        ),
      ),
    );
  }
}
