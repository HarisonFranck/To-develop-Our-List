import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int iduser;
  final String lastname;
  final String firstname;
  final String email;
  final String password;
  final String role;
  final DateTime createdAt;
  final DateTime updatedAt;

  User(
      {required this.iduser,
      required this.lastname,
      required this.firstname,
      required this.email,
      required this.createdAt,
      required this.password,
      required this.role,
      required this.updatedAt});

  @override
  List<Object?> get props => [
        iduser,
        lastname,
        firstname,
        email,
        password,
        role,
        createdAt,
        updatedAt
      ];
}
