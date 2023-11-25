import 'package:entregas/pages/anexos.dart';
import 'package:entregas/pages/barcode/barcodescan.dart';
import 'package:entregas/pages/camera/camera.dart';
import 'package:entregas/pages/settings/configuracao.dart';
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
              'Coleta & Entrega',
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                icon: const Icon(Icons.qr_code_2_outlined),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BarcodeScanPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                icon: const Icon(Icons.camera_alt_outlined),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CameraPage()),
                  );
                },
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
