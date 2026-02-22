import 'package:training_note/models/approach.dart';
import 'package:training_note/models/exercise.dart';

class Trainings {
  final DateTime date;
  final List<Approach> approach;

  const Trainings({required this.date, required this.approach});
}

List<Trainings> trainings = [
  Trainings(date: DateTime(2025, 04, 11), approach: [
    Approach(excercise: excercisesStub[0], repeats: 10),
    Approach(excercise: excercisesStub[1], repeats: 10),
    Approach(excercise: excercisesStub[2], repeats: 10)
  ]),
  Trainings(date: DateTime(2025, 04, 11), approach: [
    Approach(excercise: excercisesStub[0], repeats: 10),
    Approach(excercise: excercisesStub[1], repeats: 10),
    Approach(excercise: excercisesStub[2], repeats: 10)
  ]),
  Trainings(date: DateTime(2025, 04, 11), approach: [
    Approach(excercise: excercisesStub[0], repeats: 10),
    Approach(excercise: excercisesStub[1], repeats: 10),
    Approach(excercise: excercisesStub[2], repeats: 10)
  ]),
];
