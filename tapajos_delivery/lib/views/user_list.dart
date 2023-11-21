import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tapajos_delivery/components/user_tile.dart';
import 'package:tapajos_delivery/data/dummy_users.dart';
import 'package:tapajos_delivery/models/user.dart';
import 'package:tapajos_delivery/provider/users.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context, listen: false);

    const bool done = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: [
          IconButton(
            onPressed: () {
              users.put(User(
                  name: 'XCleidival',
                  email: 'xcleidival@gmail.coma',
                  avatarURL:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdj6agd2uETaRIOc1rSBJedDkGJhW4m9GEo3FB2kKkvg&s'));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (context, i) => UserTile(user: users.byIndex(i)),
      ),
    );
  }
}
