import 'dart:ffi';

import 'package:flutter/material.dart';

class Cargas extends StatefulWidget {
  const Cargas({super.key});

  @override
  State<Cargas> createState() => _CargasState();
}

class _CargasState extends State<Cargas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF1061B1),
      ),
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'CONTROLE DE ENTREGAS',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            'Versão: 1.0.3',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Text(
            'Bom dia CLEIDIVAL FERNANDES',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Suas cargas de hoje',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 18,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.refresh_sharp,
                  color: Color(0xffffffff),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  foregroundColor: Colors.blueAccent,
                ),
              ),
            ],
          ),
          Text(
            'Não existe nenhuma carga para ser entregue!',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
