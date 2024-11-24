import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_widget/api_testing/new_page.dart';
import 'package:testing_widget/home_page.dart';
import 'package:testing_widget/main.dart'as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("login screen", () {
    testWidgets("verify login screen with correct username and password", (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextFormField).at(0), 'username');
      await tester.enterText(find.byType(TextFormField).at(1), 'password');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(find.byType(NewPageView),findsOneWidget);
    });
  });
}
