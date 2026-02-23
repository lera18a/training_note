import 'package:flutter_test/flutter_test.dart';
import 'package:training_note/main.dart';
import 'package:training_note/main_page.dart';

void main() {
  testWidgets('list', (tester) async {
    await tester.pumpWidget(const App());

    await tester.tap(find.text("Упражнения"));
    await tester.pumpAndSettle();

    await expectLater(
      find.byType(MainPage),
      matchesGoldenFile('excersices_list.png'),
    );
    await tester.pumpAndSettle();
  });
}