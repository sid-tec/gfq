import 'package:flutter/material.dart';

class TipoContatoSegmentedButton extends StatelessWidget {
  const TipoContatoSegmentedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<int>(
      segments: const [
        ButtonSegment(value: 0, label: Text('Professores')),
        ButtonSegment(value: 1, label: Text('Tecnicos')),
        ButtonSegment(value: 2, label: Text('Orgãos')),
      ],
      selected: const {1},
      onSelectionChanged: (values) {},
    );
  }
}
