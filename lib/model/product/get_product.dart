class ProductModel {
  String productId;
  String productName;
  String description;
  int quantity;
  int price;
  String supplierName;
  String status;
  String imageUrl;
  String subCategoryId;

  ProductModel(
      {this.productId,
      this.productName,
      this.description,
      this.quantity,
      this.price,
      this.supplierName,
      this.status,
      this.imageUrl,
      this.subCategoryId});

  ProductModel.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    supplierName = json['supplierName'];
    status = json['status'];
    imageUrl = json['imageUrl'];
    subCategoryId = json['subCategoryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['description'] = this.description;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['supplierName'] = this.supplierName;
    data['status'] = this.status;
    data['imageUrl'] = this.imageUrl;
    data['subCategoryId'] = this.subCategoryId;
    return data;
  }
}