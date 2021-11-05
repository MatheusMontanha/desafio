import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:technical_case/modules/login_module/widgets/login_widget.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  MockNavigatorObserver _navigatorObserve = MockNavigatorObserver();
  setUp(() {
    _navigatorObserve = MockNavigatorObserver();
  });
  group("login page tests", () {
    testWidgets("find login page components", (widgetTester) async {
      await widgetTester.pumpWidget(
        MaterialApp(
          home: const LoginPageWidget(),
          navigatorObservers: [_navigatorObserve],
        ),
      );
      await widgetTester.pumpAndSettle();
      final finderLoginPageKey = find.byKey(const Key("login_widget_page_key"));
      final finderColumWithItemsKey =
          find.byKey(const Key("login_widget_items_key"));
      final finderColumnWidget =
          widgetTester.widget(finderColumWithItemsKey) as Column;
      expect(finderLoginPageKey, findsOneWidget);
      expect(finderColumnWidget.children.length, 4);
    });
  });
}
