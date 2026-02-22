import 'package:flutter/material.dart';
import 'package:training_note/models/exercise.dart';

class ExercisesViewModel extends ValueNotifier<List<Exercise>> {
  ExercisesViewModel(List<Exercise>? exercises) : super(exercises ?? []);

  void createExercise(String name) {
    //value - сеттер оповещает автоматически всех подписчиков об изменении value (стейта)
    final newExercise = Exercise(
        name: name, id: DateTime.now().millisecondsSinceEpoch.toString());
    value = [...value, newExercise];
  }

  void update(int index, String newName) {
    final updated = value[index].copyWith(name: newName);
    final newList = [...value];
    newList[index] = updated;
    value = newList;
  }

  void delete(int index) {
    final newList = [...value]..removeAt(index);
    value = newList;
  }
}

final ExercisesViewModel exercisesViewModel = ExercisesViewModel([]);
