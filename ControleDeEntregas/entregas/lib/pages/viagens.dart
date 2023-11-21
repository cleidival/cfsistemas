import 'package:entregas/pages/minhas_tarefas.dart';
import 'package:entregas/pages/tarefas_finalizadas.dart';
import 'package:flutter/material.dart';

class Viagens extends StatefulWidget {
  const Viagens({super.key});

  @override
  State<Viagens> createState() => _ViagensState();
}

class _ViagensState extends State<Viagens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const TabBar(
              indicatorColor: Colors.blue,
              tabs: [
                Tab(
                  text: 'Minhas tarefas',
                ),
                Tab(
                  text: 'Finalizadas',
                ),
              ],
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.all(15),
            child: TabBarView(
              children: [
                MinhasTarefas(),
                TarefasFinalizada(),
              ],
            ),
          ),
        ));
  }
}
