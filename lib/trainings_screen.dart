import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:training_note/date_formating_extension.dart';
import 'package:training_note/training_details.dart';
import 'package:training_note/models/trainings.dart';

class TrainingsScreen extends StatelessWidget {
  const TrainingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: trainings.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (context) => TrainingDetails(
                          trainings: trainings[index],
                        )));
          },
          child: Card(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${trainings[index].date.formatData()} подходов'),
                  ],
                )),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
      ),
    );
  }

  void add() {
    log('trainings add');
  }
}
