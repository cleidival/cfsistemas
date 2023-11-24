import 'package:entregas/models/funcionarios_model.dart';
import 'package:entregas/repositories/funcionarios.repository.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:entregas/services/funcionarios.services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Anexos extends StatefulWidget {
  const Anexos({super.key});

  @override
  State<Anexos> createState() => _AnexosState();
}

class _AnexosState extends State<Anexos> {
  List<Funcionarios> _funcionariosList = [];
  List<dynamic> data = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    fetchFuncionarios().then((result) => {
          setState(() {
            print('Carregamento de Dados ok');
            _funcionariosList = result;
            print(_funcionariosList);
            loading = false;
          })
        });
  }

  Widget build(BuildContext context) {
    return !loading
        ? ListView.builder(
            itemCount: _funcionariosList.length,
            itemBuilder: (BuildContext context, int index) {
              var funcionario = _funcionariosList[index];
              final codigo = funcionario.codigo;
              final nome = funcionario.nome;
              //funcionario.fromJson();

              FuncionariosProvider _funcionarioProvider =
                  new FuncionariosProvider();

              //_funcionarioProvider.insert(funcionario);

              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "${codigo}  - ${nome}",
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          )
        : Container(
            child: Center(
              child: LoadingAnimationWidget.inkDrop(
                color: Colors.blue,
                size: 50,
              ),
            ),
          );
  }
}
