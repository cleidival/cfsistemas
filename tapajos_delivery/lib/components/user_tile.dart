// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/user.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarURL == null || user.avatarURL.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarURL));
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0),
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(user.name),
                  content: Text('Detalhes...'),
                  actions: <Widget>[
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('OK')),
                  ],
                );
              });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //color: const Color(0xff153B50),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff429ea6), Color(0xff153b50)],
            ),
//            border: Border.all(color: Color(0xFF000000), width: 1.0),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff153B50),
                blurRadius: 3,
                offset: Offset(1, 2), // Shadow position
              ),
            ],
          ),
          child: ListTile(
            leading: avatar,
            title: Text(
              user.name,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              user.email,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: SizedBox(
              width: 80,
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
