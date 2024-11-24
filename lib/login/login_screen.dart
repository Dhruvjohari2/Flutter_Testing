import 'package:flutter/material.dart';
import 'package:testing_widget/home_page.dart';

import '../api_testing/new_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final _userNameController = TextEditingController();
   final _passwordController = TextEditingController();

   void _login(){
     if(_userNameController.text.trim() == "username" && _passwordController.text.trim() == "password") {
       Navigator.push(context, MaterialPageRoute(builder: (_)=> NewPageView()));
     } else {
       showDialog(context: context, builder: (BuildContext context) {
         return AlertDialog(
           title: Text("Error"),
           content: Text("Invalid UserName and password"),
           actions: [
             TextButton(onPressed: (){
               Navigator.pop(context);
             }, child:Text("Close")),
           ],
         );
       });
     }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _userNameController,
            decoration: InputDecoration(labelText: 'username'),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(labelText: 'password'),
          ),
          ElevatedButton(onPressed: _login, child: Text('Login')),
        ],
      )),
    );
  }
}
