// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sum_game/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    //verify that the refresh button works
    await tester.tap(find.byIcon(Icons.refresh));
    expect(find.text('0'), findsOneWidget);
  });

  // testWidgets('Sum widget works', (WidgetTester tester) async {
  //   await tester.pumpWidget(const MyApp());
  //   const op1 = 1;
  //   const op2 = 5;
  //   const rta = op1 + op2;
  //   //verify that the sum is correct
  //   expect(find.text(op1.toString()), findsOneWidget);
  //   expect(find.text(op2.toString()), findsOneWidget);

  //   List<int> vectorTest = [];
  //   vectorTest.clear();
  //   vectorTest.add(rta);
  //   vectorTest.add(rta + 1);
  //   vectorTest.add(rta - 1);
  //   vectorTest.shuffle();

  //   await tester.tap(find.byWidget(vectorTest));
  // });
}
