import 'package:equatable/equatable.dart';

class UserProject extends Equatable {
  final int iduserproject;
  final int idproject;
  final int iduser;
  final String role;
  final DateTime joignedAt;

  UserProject({
    required this.idproject,
    required this.iduser,
    required this.iduserproject,
    required this.joignedAt,
    required this.role,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [idproject, iduser, iduserproject, role, joignedAt];
}
