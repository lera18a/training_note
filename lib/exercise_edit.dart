import 'package:flutter/material.dart';
import 'package:training_note/common/my_elevated.dart';
import 'package:training_note/models/exercise.dart';

class ExerciseEdit extends StatelessWidget {
  const ExerciseEdit({
    super.key,
    required this.exercise,
    required this.onDelete,
  });

  final Exercise exercise;
  final void Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(exercise.exerciseName),
      actions: [
        MyElevated.close(
          onPressed: () => Navigator.pop(context),
        ),
        MyElevated.delete(
          onPressed: () {
            onDelete();
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
