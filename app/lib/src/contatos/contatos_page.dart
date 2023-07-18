import 'package:flutter/material.dart';
//
import 'widgets/tipo_contato_segmented_button.dart';

class ContatosPage extends StatefulWidget {
  const ContatosPage({super.key});

  @override
  State<ContatosPage> createState() => _ContatosPageState();
}

class _ContatosPageState extends State<ContatosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos'),
      ),
      body: const Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: TipoContatoSegmentedButton(),
            ),
          ],
        ),
      ),
    );
  }
}
