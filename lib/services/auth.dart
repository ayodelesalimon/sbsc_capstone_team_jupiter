import 'dart:convert';

import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/error_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/login.dart';
import 'package:sbsc_capstone_team_jupiter/model/register.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';

final adubaUrl = "https://aduabaecommerceapi.azurewebsites.net/";

class Auth {
  /// This method is responsible for authenticating the user
  /// userLogin() takes in the user login details as an argument
  /// and encodes it to json format
  static userLogin(Login login) async {
    final url = '${adubaUrl}login';
    try {
      final response = await Api.post(url: url, body: login);
      printData("Response", response.body);
      ErrorModel.fromJson(jsonDecode(response.body));
    } catch (e) {
      throw e;
    }
  }

  static userSignup(Register register) async {
    final url = '${adubaUrl}register-user';
    try {
      final response = await Api.post(url: url, body: register);
       printData("Response", response.body);
      print(response.statusCode);
      // if (response.statusCode == 200) {
      //   print("sucess");
        throw ErrorModel.fromJson(jsonDecode(response.body));
    //  }
     
      // if (response.statusCode != 201) {
      //   throw ErrorModel.fromJson(jsonDecode(response.body));
      // }
      // return await decodeAndStoreToken(data: response.body);
      // final deCoded = jsonDecode(response.body);
      // return deCoded;
    } catch (e) {
      throw e;
    }
  }
}
