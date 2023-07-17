import 'package:flutter/material.dart';
import 'package:secretaria/src/shered/widgets/user_image_button.dart';

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
      floatingActionButton: const EditFloatingActionButton(),
      body: const Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: OptionsSegmentedButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class EditFloatingActionButton extends StatelessWidget {
  const EditFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Navigator.of(context).pop();
        Navigator.of(context).pushNamed('/edit');
      },
      icon: const Icon(Icons.edit),
      label: const Text('Novo'),
    );
  }
}

class OptionsSegmentedButton extends StatelessWidget {
  const OptionsSegmentedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<int>(
      segments: const [
        ButtonSegment(value: 0, label: Text('Todos')),
        ButtonSegment(value: 1, label: Text('Professores')),
        ButtonSegment(value: 2, label: Text('Tecnicos')),
        ButtonSegment(value: 3, label: Text('Orgãos')),
      ],
      selected: const {1},
      onSelectionChanged: (values) {},
    );
  }
}
