import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:shared_preferences_platform_interface/in_memory_shared_preferences_async.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_async_platform_interface.dart';

import 'package:kosfinder_device_demo/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  SharedPreferencesAsyncPlatform.instance =
      InMemorySharedPreferencesAsync.empty();

  testWidgets('Aplikasi KosFinder Device Demo dapat ditampilkan', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const KosFinderDeviceApp());
    await tester.pump();

    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
