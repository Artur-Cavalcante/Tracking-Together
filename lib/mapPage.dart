import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa Sessão'),
      ),
      body: Center(
        child:  const Text('Mapa Aqui'),
      ),

    );
  }
}
