import 'package:flutter/material.dart';

class SincPage extends StatefulWidget {
  const SincPage({super.key});

  @override
  State<SincPage> createState() => _SincPageState();
}

class _SincPageState extends State<SincPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sincronização'),
      ),
    );
  }
}
