import 'package:flutter/material.dart';

class TarefasDetalhes extends StatefulWidget {
  final int tarefaID;
  const TarefasDetalhes({super.key, required this.tarefaID});

  @override
  State<TarefasDetalhes> createState() => _TarefasDetalhesState();
}

class _TarefasDetalhesState extends State<TarefasDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Tarefas'),
      ),
      body: Text(
        'Detalhes tarefas: ${widget.tarefaID}',
      ),
    );
  }
}
