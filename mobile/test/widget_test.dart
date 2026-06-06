import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vocational_app/app/vocational_app.dart';

void main() {
  testWidgets('VocationalApp renders MaterialApp', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: VocationalApp()));
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
