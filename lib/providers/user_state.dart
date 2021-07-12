import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/model/auth/login.dart';

class UserDetails extends ChangeNotifier {
  User _user;
  Image _avatar;
  String _token;
 

  get userInfo => _user;
  get token => _token;
  Image get businessLogo => _avatar;
  
  SetUser(data) {
    _user = data;
    notifyListeners();
  }

  SetUserProfile({User data}) {
    _user = data;
    notifyListeners();
  }

  SetToken(data) {
    _token = data;
    notifyListeners();
  }

 
}
