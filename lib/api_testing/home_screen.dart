import 'package:flutter/material.dart';
import 'package:testing_widget/api_testing/user_model.dart';
import 'package:testing_widget/api_testing/user_repository.dart';

class HomeScreen extends StatefulWidget {
  final Future<List<User>> futureUsers;
  const HomeScreen({super.key, required this.futureUsers});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserRepository userRepository = UserRepository();
  // late Future<List<User>> futureUsers;

  // @override
  // void initState() {
  //   super.initState();
  //   futureUsers = userRepository.fetchUsers();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: FutureBuilder<List<User>>(
        future: widget.futureUsers,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<User> users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}