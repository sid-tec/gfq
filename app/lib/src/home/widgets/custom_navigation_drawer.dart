import 'package:flutter/material.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (value) {
        switch (value) {
          case 0:
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/sinc');
            break;
          case 1:
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/config');
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
          label: Row(
            children: [
              const Text('Sinc.'),
              const SizedBox(width: 10),
              Text(
                '<ultima 13/07/2023 12h32>',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
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
