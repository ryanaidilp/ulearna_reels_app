import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.userID,
    required this.fullName,
    required this.username,
    this.profilePicture,
    this.designation,
  });
  final int userID;
  final String fullName;
  final String username;
  final String? profilePicture;
  final String? designation;

  @override
  List<Object?> get props => [
        userID,
        fullName,
        username,
        profilePicture,
        designation,
      ];
}
