class GoogleAuth {
  String provider;
  String key;
  String email;
  String firstName;
  String lastName;

  GoogleAuth(
      {this.provider, this.key, this.email, this.firstName, this.lastName});

  GoogleAuth.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    key = json['key'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['provider'] = this.provider;
    data['key'] = this.key;
    data['email'] = this.email;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    return data;
  }
}