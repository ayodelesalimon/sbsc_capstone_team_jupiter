import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';

class AccountCheckout extends StatefulWidget {
  @override
  _AccountCheckoutState createState() => _AccountCheckoutState();
}

class _AccountCheckoutState extends State<AccountCheckout> {

  var _formKey = GlobalKey<FormState>();

  bool showObscureText = true;
  bool showObscureTextPassword = true;
  bool showObscureTextPassword2 = true;
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  @override
  void dispose() {
    password.dispose();
    confirmpassword.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        width: 375,height: 812,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40,right: 24,left: 24,bottom: 17),
              width: 375,
              height: 116,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.1),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/back.png', width: 23,height: 14,),
                  Text(
                    "New Card",
                    style:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Color(0xff819272)),
                  ),
                ],
              ),
            ),
          Container(
           margin: EdgeInsets.symmetric(horizontal: 24),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 32,),
               Center(child: Image.asset('assets/images/card.png',width: 290,height: 179,)),
               Padding(
                 padding:EdgeInsets.symmetric(vertical: 24),
                 child: Divider(
                   color: Color(0xfff5f5f5),
                   thickness: 1,
                 ),
               ),
               Form(
                 key: _formKey,
                 child: Container(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         'Name on card',
                         style:
                         TextStyle(
                           color:
                           Color(0xff10151a),
                           fontSize:15,
                           fontStyle:FontStyle.normal,
                           fontWeight:FontWeight.bold,
                         ),
                       ),
                       SizedBox(height:16),
                       Input(
                         hintText:'Input account name',
                         isPassword:true,
                         showObscureText:showObscureTextPassword,
                         styleColor:Color(0xFFbababa),
                         hintStyleColor:Color(0xFFbababa),
                         validator:(String
                         value) {
                           if (value.length <3) {
                             return 'enter your account name';
                           }
                           return null;
                         },
                       ),
                       SizedBox(height:16),
                       Text('Card Number',
                         style:TextStyle(color:Color(0xff10151a),fontSize:15,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,),),
                       SizedBox(height:16),
                       Input(
                         hintText:'Confirm Card Number',styleColor:Color(0xFFbababa),
                         hintStyleColor:
                         Color(0xFFbababa),
                         validator:(String value) {
                           if (value.length <16) {
                             return 'enter valid card number';
                           }
                           return null;
                         },
                       ),
                       SizedBox(height:16),
                       Text('Expiry Date',
                         style:TextStyle(color:Color(0xff10151a),fontSize:15,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,),),
                       SizedBox(height:16),
                       Input(
                         hintText:'month/year - 12/23',styleColor:Color(0xFFbababa),
                         hintStyleColor:
                         Color(0xFFbababa),
                       ),
                       SizedBox(height:16),
                       Text('CVV',
                         style:TextStyle(color:Color(0xff10151a),fontSize:15,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,),),
                       Center(
                         child: GestureDetector(
                           child: Container(
                             width: 327,
                             height: 47,
                             decoration: BoxDecoration(
                               color: Color(0xff3a953c),
                               borderRadius: BorderRadius.circular(5.0),
                             ),
                             child: Center(
                               child: Text(
                                 'Save',
                                 style: TextStyle(
                                   color: Color(0xffffffff),
                                   fontStyle: FontStyle.normal,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 16,
                                 ),
                               ),
                             ),
                           ),
                           onTap: (){
                           },
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ],
          ),
          ),
          ],
      ),),),
    );
  }
}
