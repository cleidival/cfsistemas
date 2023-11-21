import 'package:entregas/models/tarefas_model.dart';
import 'package:entregas/pages/tarefas/tarefas_detalhes.dart';
import 'package:flutter/material.dart';

class MinhasTarefas extends StatefulWidget {
  const MinhasTarefas({super.key});

  @override
  State<MinhasTarefas> createState() => _MinhasTarefasState();
}

class _MinhasTarefasState extends State<MinhasTarefas> {
  List<Tarefas> tarefas = [
    Tarefas(
        id: '1',
        status: 'Iniciada',
        nome: 'Entrega CEAGESP',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
    Tarefas(
        id: '2',
        status: 'Aguardando',
        nome: 'Entrega CAREFOUR',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
    Tarefas(
        id: '3',
        status: 'Iniciada',
        nome: 'Entrega 25BRÁS',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
    Tarefas(
        id: '4',
        status: 'Iniciada',
        nome: 'Entrega LEROY',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
    Tarefas(
        id: '5',
        status: 'Finalizada',
        nome: 'Entrega CEAGESP',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
    Tarefas(
        id: '6',
        status: 'Finalizada',
        nome: 'Entrega CEAGESP',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
    Tarefas(
        id: '7',
        status: 'Finalizada',
        nome: 'Entrega CEAGESP',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
    Tarefas(
        id: '8',
        status: 'Finalizada',
        nome: 'Entrega CEAGESP',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
    Tarefas(
        id: '9',
        status: 'Finalizada',
        nome: 'Entrega CEAGESP',
        agendamento: '08:30 - 14:00',
        endereco: 'Rua São Carlos',
        numero: '289',
        bairro: 'Urumari',
        cidade: 'Santarém',
        uf: 'PA',
        peso: '730',
        volume: '22'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tarefas.length,
      itemBuilder: ((context, index) {
        Tarefas tarefa = tarefas[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TarefasDetalhes(
                  tarefaID: index,
                ),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 1.0,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: tarefa.status == "Iniciada"
                        ? Color.fromARGB(255, 88, 189, 160)
                        : Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  height: 150,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('# ${tarefa.id}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        '${tarefa.status}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
