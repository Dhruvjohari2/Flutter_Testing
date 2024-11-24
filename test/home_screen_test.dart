import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_widget/api_testing/home_screen.dart';
import 'package:testing_widget/api_testing/user_model.dart';

void main() {
  testWidgets("Display list of users with title name and subtitle as email", (tester) async {
    final users = [
      User(id: 1, name: 'XYZ', email: 'xyz@gmail.com'),
      User(id: 2, name: 'XYZ', email: 'xyz@gmail.com'),
    ];

    Future<List<User>> mocKFetchUsers() async {
      return Future.delayed(Duration(seconds: 1),()=> users,);
      // return users;
    }

    await tester.pumpWidget(MaterialApp(home: HomeScreen(futureUsers: mocKFetchUsers())));
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpAndSettle();
    expect(find.byType(ListView), findsOneWidget);
  });
}
