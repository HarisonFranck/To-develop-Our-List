import 'package:equatable/equatable.dart';

class Comment extends Equatable {
  final int idcomment;
  final int idtask;
  final int iduser;
  final String content;
  final DateTime createdAt;

  Comment(
      {required this.content,
      required this.createdAt,
      required this.idcomment,
      required this.idtask,
      required this.iduser});

  @override
  List<Object?> get props => [idcomment, idtask, iduser, content, createdAt];
}
