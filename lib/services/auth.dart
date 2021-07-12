import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/util/constants.dart';
import 'package:sbsc_capstone_team_jupiter/model/error_model.dart';
import 'package:sbsc_capstone_team_jupiter/model/auth/login.dart';
import 'package:sbsc_capstone_team_jupiter/model/auth/register.dart';
import 'package:sbsc_capstone_team_jupiter/screens/tab_controller.dart';
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
      if (response.statusCode == 200) {
          
      }
     
      printData("Response", response.body);
      print(response.statusCode);
      print(response.message);
      if (response.statusCode != 200) {
        print("sucess");
        ErrorModel.fromJson(jsonDecode(response.message));
        print(response.message);
      }
    } catch (e) {
      throw e;
    }
  }

  int statusCode;

  static userSignup(Register register) async {
    final url = 'https://aduabaecommerceapi.azurewebsites.net/register-user';
    try {
      final response = await Api.post(url: url, body: register);
      printData("Response", response.body);
      print(response.statusCode);
      print(response.message);
      if (response.statusCode != 200) {
        print("sucess");
       throw ErrorModel.fromJson(jsonDecode(response.body));
      }
final deCoded = jsonDecode(response.body);
      return deCoded;
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

class LoaderA {
  static Future<void> showLoadingScreen(
      BuildContext context, GlobalKey key) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: Container(
                // key: key,
                // child: CircularProgressIndicator(),
              ));
        });
  }
}

class AlertBox extends StatelessWidget {
  String message;

  AlertBox(String message) {
    this.message = message;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        contentPadding: EdgeInsets.all(0.0),
        content: Container(
          width: 200.0,
          height: 200.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 1.0),
              Text(
                'Alert',
                style: TextStyle(
                  fontSize: 26.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                child: Text(
                  this.message,
                  style: TextStyle(fontSize: 23.0, letterSpacing: 1.0),
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0)),
                  ),
                  child: Text(
                    "Close",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

void internetConnectionDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            height: 300,
            // width: 100,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.signal_wifi_off,
                    size: 60.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Oops!',
                      style: TextStyle(
                     //   fontFamily: 'NovaSquare',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'No internet connection found',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Text(
                    'Check your connection',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        child: Text(
                          'Close',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
