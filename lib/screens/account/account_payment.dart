import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/widgets/input.dart';

class AccountPayment extends StatefulWidget {
  @override
  _AccountPaymentState createState() => _AccountPaymentState();
}

class _AccountPaymentState extends State<AccountPayment> {

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
          child: Stack(
            children: [
            Container(
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
                          "Payment",
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
                       SizedBox(
                         height: 48,
                       ),
                       Text('My Cards',style: TextStyle(color: Color(0xff10151a), fontSize: 24),),
                       SizedBox(
                         height: 32,
                       ),
                       Container(
                         width: 327,height: 24,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Image.asset('assets/images/visa.png',width: 52.43,height: 16.93,),
                             SizedBox(width: 23.57,),
                             Text('1009 •••• •••• 2017',style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color(0xff10151a) ),),
                             SizedBox(width: 79.17,),
                             Image.asset('assets/images/bin.png',width: 11.67,height: 16.67,),
                           ],
                         ),
                       ),
                       Padding(
                         padding:EdgeInsets.symmetric(vertical: 24),
                         child: Divider(
                           color: Color(0xfff5f5f5),
                           thickness: 1,
                         ),
                       ),
                       Container(
                         width: 327,height: 24,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Image.asset('assets/images/master.png',width: 30.84,height: 23.93,),
                             SizedBox(width: 23.57,),
                             Text('1009 •••• •••• 2017',style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Color(0xff10151a) ),),
                             SizedBox(width: 79.17,),
                             Image.asset('assets/images/bin.png',width: 11.67,height: 16.67,),
                           ],
                         ),
                       ),
                       SizedBox(height: 308,),
                       Center(
                         child: GestureDetector(
                           onTap:(){
                             showDialog<String>(
                               context: context,
                               builder: (BuildContext context) =>
                                   AlertDialog(
                                     insetPadding: EdgeInsets.only(top: 359),
                                     content: Center(
                                       child: SingleChildScrollView(
                                         child: Container(
                                           margin: EdgeInsets.symmetric(horizontal: 24),
                                           height: 453,
                                           width: 327,
                                           child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               SizedBox(
                                                 height:32,
                                               ),
                                               Container(
                                                 width: 327,
                                                 height: 29,
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                   children: [
                                                     Text('New Card',
                                                       style: TextStyle(
                                                         fontSize: 24,
                                                         color: Color(0xff3C673D),
                                                         fontWeight: FontWeight.bold,
                                                         fontStyle: FontStyle.normal,
                                                       ),
                                                     ),
                                                     GestureDetector(
                                                       onTap: (){
                                                         Navigator.pop(context);
                                                       },
                                                       child: Container(
                                                         child: Image.asset('assets/images/x.png', color: Color(0xff000000),),
                                                         width: 12,
                                                         height: 12,
                                                       ),
                                                     ),
                                                   ],
                                                 ),
                                               ),
                                               SizedBox(height: 32,),
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
                                               ),],
                                           ),
                                         ),),),
                                   ), );
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               color: Color(0xff3A953C),
                               borderRadius: BorderRadius.circular(5),
                             ),
                             child: Center(
                               child: Text(
                                 'Add New Card',
                                 style: TextStyle(
                                     color: Color(0xffffffff),
                                     fontSize: 16,
                                     fontWeight: FontWeight.bold),
                                 textAlign: TextAlign.center,
                               ),
                             ),
                             width: 327,
                             height: 47,
                           ),
                         ),
                       ),
                       SizedBox(
                         height: 48,
                       ),
                     ],
                   ),
                 ),
                ],
              ),
            ),
              Positioned(
                bottom: 0,
                child: Center(
                  child:Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(color:Color.fromRGBO(0, -2, 20, 0.1),),
                      ],
                    ),
                    width: 375,
                    height:88,
                    child: Center(
                      child:Container(
                        width: 181.1,
                        height: 21.2,
                        child: Row(
                          children: [
                            GestureDetector(onTap:(){},child: Image.asset('assets/images/home.png',width: 16.29,height: 15.41,color: Color(0xffDEDEDE),)),
                            Spacer(),
                            GestureDetector(onTap:(){},child: Image.asset('assets/images/search.png',width: 21.2,height: 21.2,color: Color(0xffDEDEDE),)),
                            Spacer(),
                            GestureDetector(onTap:(){},child: Image.asset('assets/images/dialog.png',width: 21.2,height: 21.2,color: Color(0xff3A953C),)),
                          ],
                        ),
                      ),
                    ),),),),
          ],),
      ),
    );
  }
}
