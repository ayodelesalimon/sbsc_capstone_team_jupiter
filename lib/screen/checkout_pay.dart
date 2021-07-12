import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbsc_capstone_team_jupiter/screens/payment/card.dart';



Color inactive = Colors.black54;
Color active = Colors.black54;



update(int status) {
  if (status == 1) {
    if (inactive == Colors.black54) {
      inactive = Colors.deepOrange;
      active = Colors.black54;
    }
    else {
      inactive = Colors.black54;
    }
  }

  if (status == 2) {
    if (active == Colors.black54) {
      active = Colors.deepOrange;
      inactive = Colors.black54;
    }
    else {
      active = Colors.black54;
    }
  }



  }

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 375,
            height: 812,
            color: Color(0xffffffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                  EdgeInsets.only(bottom: 17, right: 24, left: 24, top: 40),
                  width: 375,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 2, 20, 0.1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/back.png',
                          width: 23,
                          height: 14,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 140,
                        height: 29,
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff819272),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Image.asset('assets/images/payment.png',
                          width: 318, height: 43),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Center(
                  child: Container(
                    width: 327,
                    height: 29,
                    child: Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff424347),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Center(
                  child: Container(
                    width: 327,
                    height: 95,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 282,
                          height: 95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cash on Delivery',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff10151A),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'For Contactless Delivery we recommend go \n '
                                    'cashless and stay with Aduabe Fresh Pay',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xffbbbbbb),
                                    fontWeight: FontWeight.normal),
                              ),
                              Spacer(),
                              Container(
                                width: 113,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'MORE DETAILS',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff494846),
                                          decoration: TextDecoration.underline),
                                    ),
                                    Image.asset(
                                      'assets/images/plus.png',
                                      width: 10,
                                      height: 10,
                                      color: Color(0xff494846),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child:IconButton(
                            onPressed:(){
                              setState(() {
                                update(1);
                              });
                            },
                            icon:Icon(Icons.radio_button_checked),
                            iconSize: 16,
                            color: inactive,
                          ),
                          ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Divider(
                    thickness: 1,
                    color: Color(0xfff5f5f5),
                  ),
                ),
                Center(
                  child: Container(
                    width:327,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 282,
                          child: Text('Card Payment',style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff10151a),
                              fontWeight: FontWeight.bold),
                          ),),
                          Expanded(
                            child:IconButton(
                              onPressed:(){
                  setState(() {
                  update(2);
                  });
                  },
                    icon:Icon(Icons.radio_button_checked),
                    iconSize: 16,
                    color: active,
                  ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 254,),
                Center(
                  child: GestureDetector(
                    onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> CardSelection()),);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff3A953C),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Pay Now',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child:IconButton(
          onPressed:(){
            setState(() {
              update(1);
            });
          },
          icon:Icon(Icons.radio_button_checked),
          iconSize: 16,
          color: inactive,
        ),
      ),
    );
  }
}
