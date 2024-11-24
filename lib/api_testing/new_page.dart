import 'package:flutter/material.dart';

class NewPageView extends StatefulWidget {
  const NewPageView({super.key});

  @override
  State<NewPageView> createState() => _NewPageViewState();
}

class _NewPageViewState extends State<NewPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("hello"),
        ),
      ),
    );
  }
}
