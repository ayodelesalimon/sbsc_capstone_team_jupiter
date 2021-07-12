
import 'package:flutter/cupertino.dart';
import 'package:sbsc_capstone_team_jupiter/model/auth/login.dart';

class UserProvider extends ChangeNotifier{

  User _user = User();

  User get user => _user;

  void setUser (User user){
    _user = user;
    notifyListeners();
  }
}