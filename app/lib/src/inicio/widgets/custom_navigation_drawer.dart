import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:secretaria/src/inicio/stores/inicio_store.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final inicioStore = context.watch<InicioStore>(
      (store) => store.syncDate,
    );

    final syncDateFormat = DateFormat('dd/MM/yyyy - hh:mm');
    final syncDate = inicioStore.syncDate.value;
    //

    final syncDateText =
        syncDate != null ? syncDateFormat.format(syncDate) : 'Nunca';

    return NavigationDrawer(
      onDestinationSelected: (value) {
        switch (value) {
          case 0:
            //TODO: Investigate .pop()
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('./sinc');
            break;
          case 1:
            //TODO: Investigate .pop()
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('./config');
            break;
          default:
        }
      },
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
          child: Text(
            'MENU',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync),
          label: SizedBox(
            width: 210,
            child: Row(
              children: [
                const Text('Sincron.'),
                const Spacer(),
                Text(
                  syncDateText,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Configurações'),
        ),
      ],
    );
  }
}
