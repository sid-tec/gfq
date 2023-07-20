import 'package:flutter/material.dart';

class ContatosCard extends StatelessWidget {
  const ContatosCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          //debugPrint('Card tapped.');
          // TODO(sid-tec): Investigar se é necessário usar esse pop()
          //Navigator.of(context).pop();
          Navigator.of(context).pushNamed('/contatos/');
        },
        child: const SizedBox(
          width: 200,
          height: 100,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.perm_contact_cal_rounded),
                SizedBox(
                  width: 8,
                ),
                Text('Contatos'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
