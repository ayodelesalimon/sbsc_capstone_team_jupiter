import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:sbsc_capstone_team_jupiter/model/error_model.dart';

import '../constants.dart';

class Api {
  static get({String url}) async {
    printData('Api url', url);

    // debugPrint('===> $Ap <=== $url');
    Uri apiUrl = Uri.parse(url);

    try {
      Future<Response> apiResponse = http.get(
        apiUrl,
        headers: <String, String>{
          'Accept': 'application/json',
          'Content-Type': 'application/json-patch+json; charset=UTF-8',
        },
      );
      Response response = await apiResponse;

      printData('Api res', response.body);
      if (response.statusCode < 200 || response.statusCode > 299) {
        throw ErrorModel.fromJson(jsonDecode(response.body));
      }

      return apiResponse;
    } on SocketException catch (_) {
      throw 'Kindly, check your internet connection.';
    } on TimeoutException catch (_) {
      throw 'Request Timeout.';
    } on FormatException catch (_) {
      throw 'Error Occured.';
    } catch (e) {}
  }

  String getConnectionValue(var connectivityResult) {
    String status = '';
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        status = 'Mobile';
        break;
      case ConnectivityResult.wifi:
        status = 'Wi-Fi';
        break;
      case ConnectivityResult.none:
        status = 'None';
        break;
      default:
        status = 'None';
        break;
    }
    return status;
  }
Future<bool> checkInternetConnectivity() async{
    final Connectivity _connectivity = Connectivity();
    ConnectivityResult result = await _connectivity.checkConnectivity();
    String connection = getConnectionValue(result);
    if(connection == 'None') {
      return false;
    }
    else{
      return true;
    }
  }
  static post({String url, body}) async {
    Uri apiUrl = Uri.parse(url);

    printData('Api body', jsonEncode(body));
    printData('Api url', url);

    try {
      Future<Response> apiResponse = http.post(apiUrl,
          headers: {
            'Accept': 'application/json; charset=UTF-8',
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(body));
      Response response = await apiResponse;
      print(' Statuscode>>>>${response.statusCode}');
      print("Message>>>>> ${response.reasonPhrase}");

      if (response.statusCode < 200 ||
          response.statusCode >= 400 ||
          json == null) {
        //  await Sentry.captureException(response.reasonPhrase)
        if (response.statusCode == 201) {
          throw ErrorModel.fromJson(jsonDecode(response.body));
        }
      }
      return apiResponse;
    } on SocketException catch (_) {
      throw 'Kindly, check your internet connection.';
    } on TimeoutException catch (_) {
      throw 'Request Timeout.';
    } on FormatException catch (_) {
      throw 'Error Occured.';
    } catch (e) {
      // throw await errHandler(code: e?.code, message: e?.message ?? '');
    }
  }

  static put({String url, body}) async {
    Uri apiUrl = Uri.parse(url);
    // printData('Api url', url);
    // printData('Api body', jsonEncode(body));
    try {
      Future<Response> apiResponse = http.put(apiUrl,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(body));

      Response response = await apiResponse;

      if (response.statusCode < 200 || response.statusCode > 299) {
        // await Sentry.captureException(response.reasonPhrase);

        throw ErrorModel.fromJson(jsonDecode(response.body));
      }

      return apiResponse;
    } on SocketException catch (_) {
      throw 'Kindly, check your internet connection.';
    } on TimeoutException catch (_) {
      throw 'Request Timeout.';
    } on FormatException catch (_) {
      throw 'Error Occured.';
    } catch (e) {
      // throw await errHandler(code: e?.code, message: e?.message ?? '');
    }
  }

  static patch({String url, body}) async {
    // printData('Api url', url);
    // printData('Api body', jsonEncode(body));
    Uri apiUrl = Uri.parse(url);

    try {
      Future<Response> apiResponse = http.patch(apiUrl,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(body));
      Response response = await apiResponse;

      if (response.statusCode < 200 || response.statusCode > 299) {
        throw ErrorModel.fromJson(jsonDecode(response.body));
      }

      print('Api ErrorModel $url ${response.reasonPhrase}');

      return apiResponse;
    } on SocketException catch (_) {
      throw 'Kindly, check your internet connection.';
    } on TimeoutException catch (_) {
      throw 'Request Timeout.';
    } on FormatException catch (_) {
      throw 'Error Occured.';
    } catch (e) {
      // throw await errHandler(code: e?.code, message: e?.message ?? '');
    }
  }

  static delete({String url}) async {
    //  printData('Api url', url);
    Uri apiUrl = Uri.parse(url);

    return http.delete(
      apiUrl,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }
}
