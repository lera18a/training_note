class Exercise {
  final String name;
  final String id;
  Exercise({
    required this.name,
    required this.id,
  });

  Exercise copyWith({
    final String? name,
    final String? id,
  }) {
    return Exercise(name: name ?? this.name, id: id ?? this.id);
  }
}

final List<Exercise> excercisesStub = [
  Exercise(name: "Отжимания", id: ''),
  Exercise(name: "Подтягивания", id: ''),
  Exercise(name: "Приседания", id: ''),
];
