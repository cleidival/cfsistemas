import 'package:entregas/settings.dart';
import 'package:flutter/material.dart';

class Configuracao extends StatefulWidget {
  const Configuracao({super.key});

  @override
  State<Configuracao> createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
  final _newBaseUrl = TextEditingController();
  String? initialValue = "";

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
            ElevatedButton(onPressed: saveBaseUrl, child: Text('Salvar')),
          ],
        ),
      ),
    );
  }

  void saveBaseUrl() {
    String? newBaseUrl = _newBaseUrl.text;
    print(newBaseUrl);
  }
}
