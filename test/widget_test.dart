import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sprint_up_shop/app.dart';

void main() {
  testWidgets('App starts and shows Welcome screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that Welcome text is present.
    expect(find.text('Welcome to SprintUp'), findsOneWidget);

    // Verify that Sign Up button exists.
    expect(find.text('Sign Up'), findsOneWidget);
  });
}
