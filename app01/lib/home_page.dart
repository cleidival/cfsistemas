import 'package:app01/qrview.dart';
import 'package:flutter/material.dart';
import 'learn_flutter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const QRViewExample(),
              ));
            },
            child: const Text('qrView'),
          ),
        ),
        Center(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return LearnFlutterPage();
                }));
              },
              child: const Text(
                'Lear Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
