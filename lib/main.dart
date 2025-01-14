import 'package:flutter/material.dart';
import 'package:testing_widget/api_testing/home_screen.dart';
import 'package:testing_widget/api_testing/user_repository.dart';

import 'login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      // HomeScreen(futureUsers: UserRepository().fetchUsers()),
      // const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
