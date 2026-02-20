import 'package:flutter/material.dart';
import 'package:training_note/date_formating_extension.dart';
import 'package:training_note/models/trainings.dart';

class TrainingDetails extends StatelessWidget {
  const TrainingDetails({super.key, required this.trainings});

  final Trainings trainings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(trainings.date.formatData()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ...trainings.approach.map(
              (e) => Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      e.excercise.name,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      e.repeats.toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
