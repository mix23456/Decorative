import 'package:meta/meta.dart';
import 'dart:convert';

class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({required this.token, required this.error});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };

    return map;
  }

  static remove(String s) {}
}
// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

// LoginModel loginModelFromJson(String str) =>
//     LoginModel.fromJson(json.decode(str));

// String loginModelToJson(LoginModel data) => json.encode(data.toJson());

// class LoginModel {
//   LoginModel({
//     required this.status,
//     required this.message,
//   });

//   int status;
//   Message message;

//   factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
//         status: json["status"] == null ? null : json["status"],
//         message: Message.fromJson(json["message"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "status": status == null ? null : status,
//         "message": message == null ? null : message.toJson(),
//       };
// }

// class Message {
//   Message({
//     required this.data,
//   });

//   Data data;

//   factory Message.fromJson(Map<String, dynamic> json) => Message(
//         data: Data.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data == null ? null : data.toJson(),
//       };
// }

// class Data {
//   Data({
//     required this.user,
//     required this.token,
//   });

//   User user;
//   String token;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         user: User.fromJson(json["user"]),
//         token: json["token"] == null ? null : json["token"],
//       );

//   Map<String, dynamic> toJson() => {
//         "user": user == null ? null : user.toJson(),
//         "token": token == null ? null : token,
//       };
// }

// class User {
//   User({
//     required this.isArchived,
//     required this.id,
//     required this.shortId,
//     required this.email,
//     required this.image,
//     required this.displayName,
//     required this.role,
//     required this.v,
//   });

//   bool isArchived;
//   String id;
//   String shortId;
//   String email;
//   String image;
//   String displayName;
//   String role;
//   int v;

//   factory User.fromJson(Map<String, dynamic> json) => User(
//         isArchived: json["is_archived"] == null ? null : json["is_archived"],
//         id: json["_id"] == null ? null : json["_id"],
//         shortId: json["short_id"] == null ? null : json["short_id"],
//         email: json["email"] == null ? null : json["email"],
//         image: json["image"] == null ? null : json["image"],
//         displayName: json["displayName"] == null ? null : json["displayName"],
//         role: json["role"] == null ? null : json["role"],
//         v: json["__v"] == null ? null : json["__v"],
//       );

//   Map<String, dynamic> toJson() => {
//         "is_archived": isArchived == null ? null : isArchived,
//         "_id": id == null ? null : id,
//         "short_id": shortId == null ? null : shortId,
//         "email": email == null ? null : email,
//         "image": image == null ? null : image,
//         "displayName": displayName == null ? null : displayName,
//         "role": role == null ? null : role,
//         "__v": v == null ? null : v,
//       };
// }
