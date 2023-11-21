import 'package:entregas/models/tarefas_model.dart';
import 'package:flutter/material.dart';

class TarefasDetalhes extends StatefulWidget {
  final Tarefas tarefa;
  const TarefasDetalhes({super.key, required this.tarefa});

  @override
  State<TarefasDetalhes> createState() => _TarefasDetalhesState();
}

class _TarefasDetalhesState extends State<TarefasDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Tarefas'),
      ),
      body: Container(
        width: double.infinity,    
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20 ),
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.zero, 
            topRight: Radius.circular(50),
            bottomLeft: Radius.zero, 
            bottomRight: Radius.zero
          ),
          color: Colors.amber,
          
        ),
        child: Column(        
          children: [          
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              child: Text(
                'Sequência : ${widget.tarefa.id}',
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white
                ),
              ),
            ),  
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 5),
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: Text(
                'Nome: ${widget.tarefa.nome}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white
                ),
              ),
            ),                    
          ],
        ),
      ),
    );
  }
}
