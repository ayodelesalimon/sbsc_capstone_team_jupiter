class ShippingAddress {
  String id;
  String address;
  int postalCode;
  String city;

  ShippingAddress({this.id, this.address, this.postalCode, this.city});

  ShippingAddress.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address = json['address'];
    postalCode = json['postalCode'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['address'] = this.address;
    data['postalCode'] = this.postalCode;
    data['city'] = this.city;
    return data;
  }
}