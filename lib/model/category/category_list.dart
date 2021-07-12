class CategoryItemList {

  String productId;
  double quantity;
  String productName;
  String description;
  double price;
  String imageUrl;
  String status;
  String supplierName;
  String subCategoryId;

  CategoryItemList({ this.productId,this.quantity, this.description,this.imageUrl, this.productName, this.price, this.status, this.supplierName, this.subCategoryId});

  factory CategoryItemList.fromJson(Map<String, dynamic> json) {
    return CategoryItemList(
      productId: json['productId'],
      quantity: json['quantity'],
      productName: json['productName'],
      description:json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      status: json['status'],
      supplierName:json['supplierName'],
        subCategoryId: json['subCategoryId'],
    );
  }
}