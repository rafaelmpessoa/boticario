import 'package:boticario/auth/presentation/pages/auth/auth_page.dart';
import 'package:boticario/injection.dart';
import 'package:boticario/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  configureDependencies();
  testWidgets('Page Components', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: AuthPage(),
    ));

    await tester.pumpAndSettle();

    expect(find.text(Strings.email), findsOneWidget);
    expect(find.text(Strings.password), findsOneWidget);
    expect(find.text(Strings.notHaveAccount), findsOneWidget);
    expect(find.text(Strings.signUp), findsOneWidget);
    expect(find.text(Strings.signIn.toUpperCase()), findsOneWidget);

    await tester.tap(find.text(Strings.signUp));
    await tester.pumpAndSettle();

    expect(find.text(Strings.name), findsOneWidget);
    expect(find.text(Strings.signUp.toUpperCase()), findsOneWidget);

    await tester.tap(find.text(Strings.back));
    await tester.pumpAndSettle();

    expect(find.text(Strings.signIn.toUpperCase()), findsOneWidget);
  });
}
