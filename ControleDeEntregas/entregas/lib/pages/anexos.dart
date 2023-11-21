import 'package:flutter/material.dart';

class Anexos extends StatefulWidget {
  const Anexos({super.key});

  @override
  State<Anexos> createState() => _AnexosState();
}

class _AnexosState extends State<Anexos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: const Text(
        'Anexos',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
