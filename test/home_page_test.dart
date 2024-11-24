import 'package:flutter/material.dart';
import 'package:testing_widget/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'given counter is 0 when increment button is clicked then counter should be ',
    (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: MyHomePage(
          title: "Counter App",
        ),
      ));

      final ctr = find.text('0');
      expect(ctr, findsOneWidget);

      final ctr2 = find.text('1');
      expect(ctr2, findsNothing);

      final incrementBtn = find.byType(FloatingActionButton);
      await tester.tap(incrementBtn);
      await tester.pump();

      final ctr3 = find.text('1');
      expect(ctr3, findsOneWidget);

      final ctr4 = find.text('0');
      expect(ctr4, findsNothing);
    },
  );
}
