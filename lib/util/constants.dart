import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/util/size_config.dart';

const kSECRET_KEY = "sk_test_414a941f5dd0feeca0465bf86813cf5d830e562f";

const String baseEndpoint = 'https://aduabaecommerceapi.azurewebsites.net';

List<Color> categoryColors = [
  // Color(0xFF3A953C1A),
  Color(0xFF3A953C),
  Color(0xFFBB2F48),
  Color(0xFF3C673D),
  Color(0xFFE75A21),
];

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const spacer5 = SizedBox(
  height: 5,
);
const spacer10 = SizedBox(
  height: 10,
);
const spacer20 = SizedBox(
  height: 20,
);
const spacer30 = SizedBox(
  height: 30,
);
const spacer40 = SizedBox(
  height: 40,
);
const spacer50 = SizedBox(
  height: 50,
);
const drawerTextStyle = TextStyle(
  fontSize: 15,
  color: Color(0xff10151a),
);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

printData(identifier, data) {
  return debugPrint('===> $identifier <=== $data');
}

class BaseUrl {
  static const String mainUrl = "https://aduabaecommerceapi.azurewebsites.net/";
  static const String login = mainUrl + "login";
  static const String register = mainUrl + "register-user";
}
