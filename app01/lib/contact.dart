import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Contato')),
        body: Center(
          child: Text('Formulario de Contato'),
        ));
  }
}
