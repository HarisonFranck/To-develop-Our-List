import 'package:equatable/equatable.dart';

class Project extends Equatable {
  final int idprojet;
  final String name;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final String status;
  final int createdBy;
  final DateTime createdAt;
  final DateTime updatedAt;

  Project({
    required this.createdAt,
    required this.createdBy,
    required this.description,
    required this.endDate,
    required this.idprojet,
    required this.name,
    required this.startDate,
    required this.status,
    required this.updatedAt,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        idprojet,
        name,
        description,
        startDate,
        endDate,
        status,
        createdAt,
        createdBy,
        updatedAt
      ];
}
