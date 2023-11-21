import 'package:flutter/material.dart';

import '../pages/Picking.dart';

class ElevationBTN extends StatefulWidget {
  ElevationBTN({required this.texto});

  final String texto;
  @override
  _MyElevationBTNState createState() => _MyElevationBTNState();
}

class _MyElevationBTNState extends State<ElevationBTN> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navegar para a próxima página quando o botão for clicado
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Picking(),
          ),
        );
      },
      child: Text('Abir'),
    );
  }
}

/*
class ElevationBTN extends StatelessWidget {
  const ElevationBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navegar para a próxima página quando o botão for clicado
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Picking(),
          ),
        );
      },
      child: Text('Abir'),
    );
  }
}
*/