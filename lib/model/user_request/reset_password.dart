class PasswordModel {
  String password;
  String confirmPassword;
  String lastModifiedDate;

  PasswordModel({this.password, this.confirmPassword, this.lastModifiedDate});

  PasswordModel.fromJson(Map<String, dynamic> json) {
    password = json['password'];
    confirmPassword = json['confirmPassword'];
    lastModifiedDate = json['lastModifiedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['password'] = this.password;
    data['confirmPassword'] = this.confirmPassword;
    data['lastModifiedDate'] = this.lastModifiedDate;
    return data;
  }
}