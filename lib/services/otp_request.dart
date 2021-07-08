import 'dart:convert';

import 'package:sbsc_capstone_team_jupiter/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/error_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/user_request/email_request_password.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';

final adubaUrl = "https://aduabaecommerceapi.azurewebsites.net/";

class OtpRequest {
  static emailRequest(EmailPasswordRequest emailPasswordRequest) async {
    final url = 'https://aduabaecommerceapi.azurewebsites.net/api/User/ForgotPasswordRequest/Email';
    try{
    final response = await Api.post(url: url, body: emailPasswordRequest);
   // final deCoded = jsonDecode(response.body);
      printData("Response", response.body);
      print(response.statusCode);
      print('Hello >>>> ${response.message}');
    

      throw ErrorModel.fromJson(jsonDecode(response.body));
    // return deCoded;
//     try {
      
      // printData("Response", response.body);
      // print(response.statusCode);
      // print(response.message);
      // ErrorModel.fromJson(jsonDecode(response.body));
//     // } catch (e) {
//        if (response.statusCode != 200) {
//         throw ErrorModel.fromJson(jsonDecode(response.body));
//       }
      
    } catch (e) {
      throw e;
    }
  }
 }
