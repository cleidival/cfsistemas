import 'package:flutter/material.dart';

class FuncionariosPage extends StatefulWidget {
  const FuncionariosPage({super.key});

  @override
  State<FuncionariosPage> createState() => _FuncionariosPageState();
}

class _FuncionariosPageState extends State<FuncionariosPage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Funcionarios",
      style: TextStyle(
        color: Colors.red,
        fontSize: 24,
      ),
    );
  }
}
