import 'package:equatable/equatable.dart';

class TaskHistory extends Equatable {
  final int idtaskhistory;
  final int idtask;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;

  TaskHistory(
      {required this.createdAt,
      required this.idtaskhistory,
      required this.status,
      required this.idtask,
      required this.updatedAt});

  @override
  List<Object?> get props =>
      [idtaskhistory, idtask, status, createdAt, updatedAt];
}
