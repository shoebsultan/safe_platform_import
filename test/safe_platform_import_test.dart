import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:safe_platform_import/safe_platform_import.dart';

void main() {
  group('SafePlatformService', () {
    testWidgets('closeAuthWindow', (tester) async {
      final service = SafePlatformService();
      await service.closeAuthWindow();
      // Add your assertions here (nothing to assert if it’s just window.close)
    });

    testWidgets('addToSession', (tester) async {
      late BuildContext testContext;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              testContext = context;
              return const Scaffold(body: Text('Test'));
            },
          ),
        ),
      );

      final service = SafePlatformService();
      await service.addToSession(testContext, null);

      // Add your assertions here
    });

    testWidgets('fetchFromSession', (tester) async {
      final service = SafePlatformService();

      await tester.pumpWidget(MaterialApp(
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: FutureBuilder<Map<String, dynamic>>(
                future: service.fetchFromSession(context),
                builder: (context, snapshot) {
                  return const Text('Done');
                },
              ),
            );
          },
        ),
      ));

      // Use await tester.pumpAndSettle() if fetchFromSession has async logic
      await tester.pumpAndSettle();

      // Assertions based on expected result
    });

    testWidgets('openAuthWindow', (tester) async {
      late BuildContext testContext;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              testContext = context;
              return const Scaffold(body: Text('Test'));
            },
          ),
        ),
      );

      final service = SafePlatformService();
      await service.openAuthWindow(testContext, null);

      // Add your assertions here
    });
  });

  testWidgets('clearSession', (tester) async {
    late BuildContext testContext;

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) {
            testContext = context;
            return const Scaffold(body: Text('Test'));
          },
        ),
      ),
    );

    final service = SafePlatformService();
    await service.clearSession(testContext);

    // Add your assertions here
  });
}
