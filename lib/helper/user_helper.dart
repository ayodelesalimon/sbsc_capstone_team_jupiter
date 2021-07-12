import 'package:provider/provider.dart';
import 'package:sbsc_capstone_team_jupiter/providers/user_state.dart';

userDataHelper({loginData, context}) {
  final UserDetails userDetails =
      Provider.of<UserDetails>(context, listen: false);
  userDetails.SetUser(loginData);
 
}
