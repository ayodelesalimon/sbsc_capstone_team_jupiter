
import 'dart:convert';

class AddCategory {
  String categoryName;

  AddCategory({this.categoryName});

  AddCategory.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryName'] = this.categoryName;
    return data;
  }
}



List<CategoryA> categoryAFromJson(String str) => List<CategoryA>.from(json.decode(str).map((x) => CategoryA.fromJson(x)));

String categoryAToJson(List<CategoryA> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryA {
    CategoryA({
        this.categoryName,
    });

    String categoryName;

    factory CategoryA.fromJson(Map<String, dynamic> json) => CategoryA(
        categoryName: json["categoryName"],
    );

    Map<String, dynamic> toJson() => {
        "categoryName": categoryName,
    };
}
// To parse this JSON data, do
//
//     final categoryAa = categoryAaFromMap(jsonString);


List<CategoryAa> categoryAaFromMap(String str) => List<CategoryAa>.from(json.decode(str).map((x) => CategoryAa.fromMap(x)));

String categoryAaToMap(List<CategoryAa> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class CategoryAa {
    CategoryAa({
        this.categoryName,
    });

    String categoryName;

    factory CategoryAa.fromMap(Map<String, dynamic> json) => CategoryAa(
        categoryName: json["categoryName"],
    );

    Map<String, dynamic> toMap() => {
        "categoryName": categoryName,
    };
}
