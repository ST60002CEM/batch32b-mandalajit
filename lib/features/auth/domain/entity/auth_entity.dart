import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String? id;
  final String fname;
  final String lname;
  final String? image;
  final String phone;
  // final BatchEntity batch;
  // final List<CourseEntity> courses;
  final String username;
  final String password;

  const AuthEntity({
    this.id,
    required this.fname,
    required this.lname,
    this.image,
    required this.phone,
    // required this.batch,
    // required this.courses,
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props =>
      [id, fname, lname, image, phone, username, password];
      // [id, fname, lname, image, phone, batch, courses, username, password];
}
