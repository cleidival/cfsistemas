import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:entregas/models/Inventario_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InventarioTiPage extends StatelessWidget {
  const InventarioTiPage({super.key});
  static String collectionPath = "inventario-ti";

  Future createUser({
    required String parecer_shx,
    required String numero_ativo,
    required String loja,
    required String setor,
    required String windows,
    required String disco,
    required String tamanho,
    required String livre,
    required String ram,
    required String processador,
    required String nucleos,
    required String ip_final,
    required String usuario,
  }) async {
    final docUser = FirebaseFirestore.instance.collection(collectionPath).doc();

    final device = InventarioTiModel(
        id: docUser.id,
        parecer_shx: parecer_shx,
        numero_ativo: numero_ativo,
        loja: loja,
        setor: setor,
        windows: windows,
        disco: disco,
        tamanho: tamanho,
        livre: livre,
        ram: ram,
        processador: processador,
        nucleos: nucleos,
        ip_final: ip_final,
        usuario: usuario);

    final json = device.toJson();
    await docUser.set(json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FIREBASE'),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(),
            ElevatedButton(
                onPressed: _createInventario, child: Text('Click me'))
          ],
        ),
      ),
    );
  }

  void _createInventario() {
    createUser(
      parecer_shx: 'xx',
      numero_ativo: '',
      loja: 'AGRONORTE',
      setor: '',
      windows: '',
      disco: '',
      tamanho: '',
      livre: '',
      ram: '',
      processador: '',
      nucleos: '',
      ip_final: '',
      usuario: '',
    );
  }
}
