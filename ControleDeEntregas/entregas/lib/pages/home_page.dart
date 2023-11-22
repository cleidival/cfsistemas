import 'package:entregas/pages/anexos.dart';
import 'package:entregas/pages/configuracao.dart';
import 'package:entregas/pages/mensagens.dart';
import 'package:entregas/pages/cargas/minhas_cargas.dart';
import 'package:entregas/pages/tarefas/tarefas_finalizadas.dart';
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
    const MInhasCargas(),
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
        backgroundColor: Color(0xff1061B1), //s.blue[300],
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
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                icon: const Icon(Icons.settings),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Configuracao()),
                  );
                },
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
            label: 'CARGAS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_split_sharp),
            label: 'TAREFAS',
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
        selectedFontSize: 10,
        selectedItemColor: Color(0xff1061B1),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
