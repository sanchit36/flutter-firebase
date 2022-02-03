class UserModel {
  final String uid;
  final String email;
  final String firstName;
  final String lastName;

  UserModel({
    required this.uid,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}
