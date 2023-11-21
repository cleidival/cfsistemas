import 'package:app01/learn_flutter_page.dart';
import 'package:flutter/material.dart';

const int itemCount = 50;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            'Item',
            style: TextStyle(fontSize: 14),
          ),
          subtitle: Text('Suibtitulo do item'),
          leading: Icon(Icons.access_time),
          trailing: Icon(
            Icons.chevron_right_outlined,
          ),
          isThreeLine: true,
          dense: true,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LearnFlutterPage(),
                ));
          },
        );
      },
    );
    /*
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: const Row(
        children: [
          Text('ok'),
          Text('Texto 010920192'),
        ],
      ),
    );*/
  }
}
