import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final int idtask;
  final int? projectid;
  final int assignedTo;
  final String title;
  final String description;
  final DateTime dueDate;
  final String status;
  final String priority;
  final DateTime createdAt;
  final DateTime updatedAt;

  Task({
    required this.assignedTo,
    required this.createdAt,
    required this.description,
    required this.dueDate,
    required this.idtask,
    required this.priority,
    required this.projectid,
    required this.status,
    required this.title,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        idtask,
        projectid,
        assignedTo,
        title,
        description,
        dueDate,
        status,
        priority,
        createdAt,
        updatedAt
      ];
}
