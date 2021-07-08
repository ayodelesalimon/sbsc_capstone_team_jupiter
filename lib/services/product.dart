import 'dart:convert';
import 'package:sbsc_capstone_team_jupiter/model/category/add_category.dart';
import 'package:sbsc_capstone_team_jupiter/model/category/category_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/error_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/product/get_product.dart';
import 'package:sbsc_capstone_team_jupiter/model/user_request/email_request_password.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';

import '../constants.dart';

//final adubaUrl = "https://aduabaecommerceapi.azurewebsites.net/Categories/add";

class Product {
  
  static getCategory() async {
    final url = 'https://aduabaecommerceapi.azurewebsites.net/Products/get-all-products';
    try {
      final response = await Api.get(url: url);
      if (response.statusCode != 200) {
        throw ErrorModel.fromJson(jsonDecode(response.body));
      }
      final data = jsonDecode(response.body);
      ProductModel deCoded = ProductModel.fromJson(data);
      return deCoded;
    } catch (e) {
      throw e;
    }
  }
}
