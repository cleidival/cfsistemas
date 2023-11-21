import 'package:app01/home_page.dart';
import 'package:flutter/material.dart';

import 'contact.dart';

class LearnFlutterPage extends StatelessWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: CorpoDinamico(),
    );
  }
}

/*
Componetização
digita stl e pressiona enter
 */

class CorpoDinamico extends StatelessWidget {
  const CorpoDinamico({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/mario.jpeg'),
        const SizedBox(height: 20),
        const Divider(
          color: Colors.black,
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          color: Colors.blueGrey,
          width: double.infinity,
          child: const Center(
            child: Text(
              'Teste widget',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 24,
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            debugPrint('Elevated button pressionado');
          },
          child: const Text('Elevated Button'),
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.home),
          onPressed: () {
            debugPrint('Elevated button pressionado');
          },
          label: const Text('Elevated Button'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Contact()
                )
            );
          },
          child: const Text('Elevated Button'),
        ),
      ],
    );
  }
}
