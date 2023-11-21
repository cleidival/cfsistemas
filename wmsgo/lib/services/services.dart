import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchData() async {
  final String url =
      "https://api.mockfly.dev/mocks/f4cba92a-ced7-4501-a29f-d9b99c2dac16/vendas";
//    await http.get(Uri.parse('https://cfsistemas.free.beeceptor.com/todos'));
  final response = await http.get(
      Uri.parse('https://6500890818c34dee0cd51295.mockapi.io/api/v1/vendas'));

  
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}
