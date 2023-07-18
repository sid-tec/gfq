import 'package:flutter/material.dart';
import 'package:secretaria/src/shered/widgets/user_image_button.dart';

import 'widgets/contatos_card.dart';
import 'widgets/custom_navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          children: [ContatosCard()],
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
        Navigator.of(context).pushNamed('/home/edit');
      },
      icon: const Icon(Icons.edit),
      label: const Text('Novo'),
    );
  }
} */
