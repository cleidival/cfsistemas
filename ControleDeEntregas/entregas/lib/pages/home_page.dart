import 'package:entregas/pages/anexos.dart';
import 'package:entregas/pages/mensagens.dart';
import 'package:entregas/pages/tarefas_finalizadas.dart';
import 'package:flutter/material.dart';

import 'viagens.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;

  final List _paginas = [
    const Viagens(),
    const Mensagens(),
    const Anexos(),
  ];

  _onItemTapped(index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Row(
          children: [
            const Text(
              'Minha Coleta e Entrega',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                icon: const Icon(Icons.sync_alt),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Anexos()),
                  );
                },
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.cloud_done_outlined,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: _paginas[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: 'VIAGENS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'MENSAGENS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_file),
            label: 'ANEXOS',
          ),
        ],
        currentIndex: _selectedItem,
        selectedItemColor: Colors.blue[300],
        onTap: _onItemTapped,
      ),
    );
  }
}
