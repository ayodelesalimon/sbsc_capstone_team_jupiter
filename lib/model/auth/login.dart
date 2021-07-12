import 'dart:convert';

class Login {
  String email;
  String password;

  Login({this.email, this.password});

  Login.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

class User {
  //int userId;
  String password;
  String name;
  String email;
  String phone;
  String type;
  String token;
  String renewalToken;

  User(
      {this.password,
        this.name,
      this.email,
      this.phone,
      this.type,
      this.token,
      this.renewalToken});

  // now create converter

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
      password: responseData['password'],
      // userId: responseData['id'],
      name: responseData['Username'],
      email: responseData['email'],
      phone: responseData['phone'],
      type: responseData['type'],
      token: responseData['token'],
      renewalToken: responseData['token'],
    );


  }

     
}

class UserMode {
  String userId;
  String firstName;
  String lastName;
  String email;
  String userName;
  String jti;
  int nbf;
  int exp;
  int iat;
  String iss;
  String aud;

  UserMode(
      {this.userId,
      this.firstName,
      this.lastName,
      this.email,
      this.userName,
      this.jti,
      this.nbf,
      this.exp,
      this.iat,
      this.iss,
      this.aud});

  UserMode.fromJson(Map<String, dynamic> json) {
    userId = json['UserId'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    email = json['Email'];
    userName = json['UserName'];
    jti = json['jti'];
    nbf = json['nbf'];
    exp = json['exp'];
    iat = json['iat'];
    iss = json['iss'];
    aud = json['aud'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['UserId'] = this.userId;
  //   data['FirstName'] = this.firstName;
  //   data['LastName'] = this.lastName;
  //   data['Email'] = this.email;
  //   data['UserName'] = this.userName;
  //   data['jti'] = this.jti;
  //   data['nbf'] = this.nbf;
  //   data['exp'] = this.exp;
  //   data['iat'] = this.iat;
  //   data['iss'] = this.iss;
  //   data['aud'] = this.aud;
  //   return data;
  // }
}
class UserModel {
  bool isSuccess;
  String message;
  Data data;

  UserModel({this.isSuccess, this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    isSuccess = json['isSuccess'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isSuccess'] = this.isSuccess;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}
UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());
class Data {
  String token;
  String refreshToken;

  Data({this.token, this.refreshToken});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['refreshToken'] = this.refreshToken;
    return data;
  }
}