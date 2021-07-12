import 'dart:convert';

import 'package:sbsc_capstone_team_jupiter/util/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/error_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/user_request/email_request_password.dart';
import 'package:sbsc_capstone_team_jupiter/services/base.dart';

final adubaUrl = "https://aduabaecommerceapi.azurewebsites.net/";

class OtpRequest {
  static emailRequest(EmailPasswordRequest emailPasswordRequest) async {
    final url =
        'https://aduabaecommerceapi.azurewebsites.net/ForgotPasswordRequest/Email';

    final response = await Api.post(url: url, body: emailPasswordRequest);
    final deCoded = jsonDecode(response.body);
    
    printData("Response", response.body);
    print(">>>>>>>>>>>>>>${deCoded['message']}");
    print('Hello >>>> ${response.message}');

    return deCoded;
  }
}
