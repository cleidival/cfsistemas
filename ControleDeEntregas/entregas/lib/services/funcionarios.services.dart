import 'dart:convert';
import 'package:entregas/models/funcionarios_model.dart';
import 'package:entregas/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Funcionarios>> fetchFuncionarios() async {
  String url = '$BASE_URL/Funcionarios/Lista';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    //Retorna dados dos funcionarios no formato do Funcionarios Model
    //return json.decode(response.body);

    final json = jsonDecode(response.body);
    final results = json as List<dynamic>;
    final funcionarios = results.map((e) {
      return Funcionarios(
        ordem: e['ordem'],
        codigo: e['codigo'],
        nome: e['nome'],
        senha: e['senha'],
        apelido: e['apelido'],
        cargo: e['cargo'],
        inativo: e['inativo'],
        superusuario: e['superusuario'],
        liberado: e['liberado'],
        email: e['email'],
      );
    });
    return funcionarios.toList();
  } else {
    //Retorna dados dos funcionarios no formato do Funcionarios Model
    throw Exception('Erro Ao carregar pagina ${response.statusCode}');
  }
}
