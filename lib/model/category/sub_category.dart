class SubCategories {
  String subCategoryId;
  String subCategoryName;
  String subCategoryImage;
  int quantityOfSubCategoryProduct;

  SubCategories(
      {this.subCategoryId,
      this.subCategoryName,
      this.subCategoryImage,
      this.quantityOfSubCategoryProduct});

  SubCategories.fromJson(Map<String, dynamic> json) {
    subCategoryId = json['subCategoryId'];
    subCategoryName = json['subCategoryName'];
    subCategoryImage = json['subCategoryImage'];
    quantityOfSubCategoryProduct = json['quantityOfSubCategoryProduct'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['subCategoryId'] = this.subCategoryId;
  //   data['subCategoryName'] = this.subCategoryName;
  //   data['subCategoryImage'] = this.subCategoryImage;
  //   data['quantityOfSubCategoryProduct'] = this.quantityOfSubCategoryProduct;
  //   return data;
  // }
}