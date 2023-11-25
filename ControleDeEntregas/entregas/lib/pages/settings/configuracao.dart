import 'package:entregas/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:system_info_plus/system_info_plus.dart';
import 'dart:io';
import 'dart:async';

class Configuracao extends StatefulWidget {
  const Configuracao({super.key});

  @override
  State<Configuracao> createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
  final _newBaseUrl = TextEditingController();
  String? initialValue = "";
  int _deviceMemory = -1;

  Future<void> initPlatformState() async {
    int deviceMemory;
    try {
      deviceMemory = await SystemInfoPlus.physicalMemory ?? -1;
    } on PlatformException {
      deviceMemory = -1;
    }
    if (!mounted) return;
    setState(() {
      _deviceMemory = deviceMemory;
    });
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuração'),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            TextFormField(
              controller: _newBaseUrl,
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: 'URL Servidor',
                  labelStyle: TextStyle(color: Colors.blue)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: saveBaseUrl,
              child: Text('Salvar'),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Memória total: $_deviceMemory MB'),
          ],
        ),
      ),
    );
  }

  void saveBaseUrl() {
    String? newBaseUrl = _newBaseUrl.text;
    
  }
}
