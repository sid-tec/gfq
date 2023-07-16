import 'package:flutter/material.dart';
import 'package:secretaria/src/shered/widgets/user_image_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secretaria do GFQ'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.edit),
        label: const Text('Novo'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('Todos')),
                ButtonSegment(value: 1, label: Text('Professores')),
                ButtonSegment(value: 2, label: Text('Tecnicos')),
                ButtonSegment(value: 3, label: Text('Orgãos')),
              ],
              selected: const {0},
              onSelectionChanged: (values) {},
            ),
          ),
        ],
      ),
    );
  }
}
