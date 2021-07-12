import 'dart:convert';
import 'package:sbsc_capstone_team_jupiter/model/category/add_category.dart';
import 'package:sbsc_capstone_team_jupiter/model/category/category_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/category/sub_category.dart';
import 'package:sbsc_capstone_team_jupiter/model/error_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/user_request/email_request_password.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';

import '../util/constants.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

//final adubaUrl = "https://aduabaecommerceapi.azurewebsites.net/Categories/add";
String url = BaseUrl.mainUrl;

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

  static Future<List<SubCategories>> getAllCategory() async {
    List<SubCategories> categoryItemList = [];
    String urlRes = '$url/SubCategories/get-all-subcategories';

    http.Response _response = await http.get(Uri.parse(urlRes));
    print(_response.body);

    List decodedResponse = jsonDecode(_response.body);
    categoryItemList =
        decodedResponse.map((json) => SubCategories.fromJson(json)).toList();
    return categoryItemList;
  }

  static Future<List<SubCategories>> searchProduct() async {
    List<SubCategories> categoryItemList = [];
    String urlRes = '$url/Products/search-for-products-byname';

    http.Response _response = await http.get(Uri.parse(urlRes));
    print(_response.body);

    List decodedResponse = jsonDecode(_response.body);
    categoryItemList =
        decodedResponse.map((json) => SubCategories.fromJson(json)).toList();
    return categoryItemList;
  }
}




class ApiHelper {
//https://aduabaecommerceapi.azurewebsites.net/SubCategories/get-all-subcategories

}
