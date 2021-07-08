import 'dart:convert';
import 'package:sbsc_capstone_team_jupiter/model/category/add_category.dart';
import 'package:sbsc_capstone_team_jupiter/model/category/category_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/error_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/user_request/email_request_password.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';

import '../constants.dart';

//final adubaUrl = "https://aduabaecommerceapi.azurewebsites.net/Categories/add";

class Category {
  static addCategory(AddCategory addCategory) async {
    final url = "https://aduabaecommerceapi.azurewebsites.net/Categories/add";
    try {
      final response = await Api.post(url: url, body: addCategory);
        printData("Response", response.body);
        print(response.statusCode);
        print(response.message);
      //   ErrorModel.fromJson(jsonDecode(response.body));
      // } catch (e) {
      if (response.statusCode != 200) {
        throw ErrorModel.fromJson(jsonDecode(response.body));
      } else {
        final deCoded = jsonDecode(response.body);
        return deCoded;
      }
    } catch (e) {
      throw e;
    }
  }


  static getCategory() async {
    final url = 'https://aduabaecommerceapi.azurewebsites.net/Categories';
    try {
      final response = await Api.get(url: url);
      if (response.statusCode != 200) {
        throw ErrorModel.fromJson(jsonDecode(response.body));
      }
      final data = jsonDecode(response.body);
      CategoryModel deCoded = CategoryModel.fromJson(data);
      return deCoded;
    } catch (e) {
      throw e;
    }
  }
}
