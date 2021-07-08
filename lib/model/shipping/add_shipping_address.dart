class AddShippingAddress {
  String userId;
  String address;
  int postalCode;
  String city;

  AddShippingAddress({this.userId, this.address, this.postalCode, this.city});

  AddShippingAddress.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    address = json['address'];
    postalCode = json['postalCode'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['address'] = this.address;
    data['postalCode'] = this.postalCode;
    data['city'] = this.city;
    return data;
  }
}