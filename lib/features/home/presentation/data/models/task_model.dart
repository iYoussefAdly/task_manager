class TaskModel {
  final String title;
  final DateTime date;
  final bool isDone;
  TaskModel({required this.title, required this.date, required this.isDone});

  TaskModel copyWith({String? title, DateTime? date, bool? isDone}) {
    return TaskModel(
      title: title ?? this.title,
      date: date ?? this.date,
      isDone: isDone ?? this.isDone,
    );
  }
}
