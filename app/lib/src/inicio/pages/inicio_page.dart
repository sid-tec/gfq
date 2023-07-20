import 'package:flutter/material.dart';
import 'package:secretaria/src/shared/widgets/user_image_button.dart';

import '../widgets/contatos_card.dart';
import '../widgets/custom_navigation_drawer.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomNavigationDrawer(),
      appBar: AppBar(
        title: const Text('Secretaria do GFQ'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      //floatingActionButton: const EditFloatingActionButton(),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 18),
            ContatosCard(),
          ],
        ),
      ),
    );
  }
}




/* class EditFloatingActionButton extends StatelessWidget {
  const EditFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed('/Inicio/edit');
      },
      icon: const Icon(Icons.edit),
      label: const Text('Novo'),
    );
  }
} */
