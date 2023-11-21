import 'package:flutter/material.dart';

class TarefasFinalizada extends StatefulWidget {
  const TarefasFinalizada({super.key});

  @override
  State<TarefasFinalizada> createState() => _TarefasFinalizadaState();
}

class _TarefasFinalizadaState extends State<TarefasFinalizada> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tarefas Finalizadas'),
    );
  }
}
