import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tapajos_delivery/data/dummy_users.dart';

import '../models/user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(index) {
    return _items.values.elementAt(index);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    //Adicionar novo usuario na lista de usuarios

    if (user.id != null &&
        user.id.toString().trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
          user.id.toString(),
          (_) => User(
                id: user.id,
                name: user.name,
                email: user.email,
                avatarURL: user.avatarURL,
              ));
    } else {
      final id = Random().nextDouble().toString();

      _items.putIfAbsent(
          '1000',
          () => User(
              id: id,
              name: user.name,
              email: user.email,
              avatarURL: user.avatarURL));
    }

    notifyListeners();
  }
}
