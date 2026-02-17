import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:training_note/exercise_create.dart';
import 'package:training_note/exercise_edit.dart';
import 'package:training_note/models/exercise.dart';

class ExcercisesScreen extends StatefulWidget {
  const ExcercisesScreen({super.key});

  @override
  State<ExcercisesScreen> createState() => _ExcercisesScreenState();
}

class _ExcercisesScreenState extends State<ExcercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: excercisesStub.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => ExerciseEdit(
                      exercise: excercisesStub[index],
                      onDelete: () {
                        setState(() {
                          excercisesStub.removeAt(index);
                        });
                      },
                    ));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(excercisesStub[index].exerciseName),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          log('excercise add');
          final result = await showDialog(
              context: context, builder: (context) => ExerciseCreate());
          if (result == null) return;
          setState(() {
            excercisesStub.add(result);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
