import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:training_note/main.dart';
<<<<<<< HEAD
import 'package:training_note/ui/training/widgets/create_training.dart';
>>>>>>> 51ceae1 (refactor(training/widgets): delete training from details screen)

void main() {
  testWidgets('training details', (tester) async {
    await tester.pumpWidget(const App());

    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    await expectLater(
      find.byType(CreateTraining),
      matchesGoldenFile('trainig_create_empty.png'),
    );
    await tester.pumpAndSettle();
  });
}
