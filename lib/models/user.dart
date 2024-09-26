import 'dart:ffi';

class User{
  final String username;
  final String password;
  final int station_id;
  User({
    required this.username,
    required this.password,
    required this.station_id
  });

  Map<String,dynamic> toJson() => {
    'username':username,
    'password':password,
    'station_id':station_id,
  };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      password: json['password'],
      station_id: json['station_id']
    );
  }
}