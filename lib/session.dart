import 'package:flutter/material.dart';

import 'mapPage.dart';

class SessionPage extends StatefulWidget {
  SessionPage({super.key});

  String? Name;

  @override
  State<SessionPage> createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Sessão'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                obscureText: false,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nome"
                ),
                onChanged: (name) {
                  widget.Name = name;
                },
              ),
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)
              ),
              child: const Text('Iniciar Sessão'),
              onPressed: () {
                //TODO aqui precisa pegar o nome, mandar para o back
                //pegar o ok da sessão, e iniciar o mapa


                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPage()),
                );
              },
            )
          ],
        ),
      ),

    );
  }
}
