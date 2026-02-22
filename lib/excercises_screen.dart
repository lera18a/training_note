import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:training_note/exercise_create.dart';
import 'package:training_note/exercise_edit.dart';
import 'package:training_note/models/exercise.dart';
import 'package:training_note/view_models/exercises_view_model.dart';

class ExcercisesScreen extends StatelessWidget {
  const ExcercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: exercisesViewModel,
          builder: (context, value, child) {
            return ListView.separated(
              itemCount: excercisesStub.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) => ExerciseEdit(
                            exercise: value[index],
                            onDelete: () {
                              exercisesViewModel.delete(index);
                              value.removeAt(index);
                              Navigator.of(context).pop();
                            },
                          ));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(value[index].name),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          log('excercise add');
          final result = await showDialog(
              context: context, builder: (context) => ExerciseCreate());
          if (result == null) return;
          exercisesViewModel.createExercise(result);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
