import 'dart:convert';
import 'package:entregas/settings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchFuncionarios() async {
  String url = BASE_URL + '/Funcionarios/Lista';
  //http: //192.168.2.220:8082/api/v1/Funcionarios/Lista

  try {
    final response = await http.get(Uri.parse(url));
    print(url);

    if (response.statusCode == 200) {
      print("Dados Carregados");
      return json.decode(response.body);
    } else {
      print('Erro Ao carregar pagina: ${response.statusCode}');
      throw Exception('Erro Ao carregar pagina ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Failed to load data: $error');
  }
}
