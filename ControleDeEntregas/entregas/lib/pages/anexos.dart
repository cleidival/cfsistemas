import 'package:entregas/models/funcionarios_model.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:entregas/repositories/funcionarios.repository.dart';

class Anexos extends StatefulWidget {
  const Anexos({super.key});

  @override
  State<Anexos> createState() => _AnexosState();
}

class _AnexosState extends State<Anexos> {
  List<dynamic> _funcionariosList = [];
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchFuncionarios().then((result) => {
          setState(() {
            print('Carregamento de Dados ok');
            _funcionariosList = result;
          })
        });
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _funcionariosList.length,
      itemBuilder: (BuildContext context, int index) {
        var funcionario = _funcionariosList[index];

        return Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.blueAccent, borderRadius: BorderRadius.circular(5)),
          child: Text(
            funcionario['codigo'].toString() +
                ' - ' +
                funcionario['nome'].toString(),
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}
