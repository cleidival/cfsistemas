import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tapajos_delivery/routes/app_routes.dart';
import 'package:tapajos_delivery/views/user_form.dart';
import 'package:tapajos_delivery/views/user_list.dart';
import 'package:tapajos_delivery/provider/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Users(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            AppRoutes.HOME: (context) => const UserList(),
            AppRoutes.USER_FORM: (context) => const UserForm(),
          },
        ));
  }
}
