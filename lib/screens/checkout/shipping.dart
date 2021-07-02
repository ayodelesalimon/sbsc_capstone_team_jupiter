import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShippingPage extends StatefulWidget {
  @override
  _ShippingPageState createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {

  var _formKey = GlobalKey<FormState>();

  TextEditingController address =TextEditingController();
  TextEditingController fullname =TextEditingController();
  TextEditingController phone =TextEditingController();

  
  var clientList = [
    'David Fayemi',
    'David Fayemi',
    'David Fayemi',
  ];
  var contactList = [
    '+2348074057767',
    '+2348074057767',
    '+2348074057767',
  ];
  var addressList = [
   'Railway Quarters , tejuosho, Surulere ,Lagos, Surulere (Ojuelegba), Lagos',
    'Railway Quarters , tejuosho, Surulere ,Lagos, Surulere (Ojuelegba), Lagos',
    'Railway Quarters , tejuosho, Surulere ,Lagos, Surulere (Ojuelegba), Lagos',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width:375,
            height:812,
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
                        onTap:(){
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
                          ),),
                     Spacer(),
                      Image.asset('assets/images/checkout.png',width: 318,height: 43),
                    ],
                  ),
                ),
                SizedBox(height:32),
                Center(
                  child: Container(
                    width: 327,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 184,
                          height: 29,
                          child: Text('Shipping Address',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff424347),
                              fontWeight: FontWeight.bold,
                            ),
                          ),),
                        InkWell(
                          splashColor: Colors.green,
                          onTap:(){
                              showDialog<String>(
                                context: context,
                                builder: (
                                    BuildContext context) =>
                                    AlertDialog(
                                      insetPadding: EdgeInsets.only(top: 359,),
                                      content: Center(
                                        child:SingleChildScrollView(
                                          child: Container(
                                            width: 375,
                                            height: 453,
                                            child: Form(
                                              key: _formKey,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text('New Address',style: TextStyle(
                                                          color: Color(0xff3C673D), fontSize: 24,fontWeight: FontWeight.bold),),
                                                      Image.asset('assets/images/x.png',width: 12,height:12),
                                                    ],
                                                  ),
                                                  SizedBox(height: 32,),
                                                  Container(
                                                    // width: 26.66.w,
                                                    height:20,
                                                    child: Text(
                                                      'Full Name',
                                                      style: TextStyle(
                                                        color: Color(0xff10151a),
                                                        fontSize: 15,
                                                        fontStyle: FontStyle.normal,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 16,),
                                                  Container(
                                                    width: 327,
                                                    height: 47,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xfff7f7f7),
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                    child: TextFormField(
                                                      textAlign: TextAlign.start,
                                                      keyboardType: TextInputType.text,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontStyle: FontStyle.normal,
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 15,
                                                      ),
                                                      decoration: InputDecoration(
                                                        border: OutlineInputBorder(),
                                                        hintText: 'Full Name',
                                                        hintStyle: TextStyle(
                                                          fontStyle: FontStyle.normal,
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 15,
                                                          color: Color(0xffbababa),
                                                        ),
                                                      ),
                                                      validator:(value){
                                                        if(value == ''){
                                                          return 'FullName is required.';
                                                        }
                                                      },
                                                      onSaved: (value){
                                                        fullname = value as TextEditingController;
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(height:16),
                                                  Container(
                                                    // width: 26.66.w,
                                                    height:20,
                                                    child: Text(
                                                      'Phone Number',
                                                      style: TextStyle(
                                                        color: Color(0xff10151a),
                                                        fontSize: 15,
                                                        fontStyle: FontStyle.normal,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 16,),
                                                  Container(
                                                    width: 327,
                                                    height: 47,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xfff7f7f7),
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                    child: TextFormField(
                                                      textAlign: TextAlign.start,
                                                      keyboardType: TextInputType.number,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontStyle: FontStyle.normal,
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 15,
                                                      ),
                                                      decoration: InputDecoration(
                                                        prefixText:'+234',
                                                        border: OutlineInputBorder(),
                                                        hintText: '80*******2',
                                                        hintStyle: TextStyle(
                                                          fontStyle: FontStyle.normal,
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 15,
                                                          color: Color(0xffbababa),
                                                        ),
                                                      ),
                                                      validator:(value){
                                                        if(value == ''){
                                                          return 'Phone Number is required';
                                                        }
                                                      },
                                                      onSaved: (value){
                                                        phone = value as TextEditingController;
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                  Container(
                                                    // width: 26.66.w,
                                                    height:20,
                                                    child: Text(
                                                      'Address',
                                                      style: TextStyle(
                                                        color: Color(0xff10151a),
                                                        fontSize: 15,
                                                        fontStyle: FontStyle.normal,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 16,),
                                                  Container(
                                                    width: 327,
                                                    height: 47,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xfff7f7f7),
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                    child: TextFormField(
                                                      textAlign: TextAlign.start,
                                                      keyboardType: TextInputType.text,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontStyle: FontStyle.normal,
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 15,
                                                      ),
                                                      decoration: InputDecoration(
                                                        border: OutlineInputBorder(),
                                                        hintText: 'Delivery Address',
                                                        hintStyle: TextStyle(
                                                          fontStyle: FontStyle.normal,
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 15,
                                                          color: Color(0xffbababa),
                                                        ),
                                                      ),
                                                      validator:(value){
                                                        if(value == ''){
                                                          return 'Delivery Address is required.';
                                                        }
                                                      },
                                                      onSaved: (value){
                                                        address = value as TextEditingController;
                                                      },
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                    child: GestureDetector(
                                                      onTap:(){},
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          color: Color(0xff3A953C),
                                                          borderRadius: BorderRadius.circular(5),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Save',
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
                                      ),
                                    ),
                              );
                            },
                          child: Container(
                            width: 95,
                            height: 16,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/plus.png',width: 12, height: 12,color: Color(0xff979797),),
                                Text('Add Address',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff3E3E3E),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                Expanded(
                  child: Center(
                    child: Container(
                      width: 327,
                      height:295,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: ListView.separated(
                        itemCount: addressList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 327,
                            height: 115,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 282,
                                  height: 115,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 282,
                                        child: Text(clientList[index],
                                          style: TextStyle(fontSize: 16,color: Color(0xff10151A),fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width: 282,
                                          child: Text(addressList[index],style: TextStyle(fontSize: 13,color: Color(0xffbbbbbb),fontWeight: FontWeight.normal),),
                                      ),
                                      Container(
                                        width: 282,
                                        child: Text(contactList[index],style: TextStyle(fontSize: 13,color: Color(0xffbbbbbb),fontWeight: FontWeight.normal),),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 282,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text('Change',style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.bold),),
                                            Image.asset('assets/images/bin.png',width: 11.67,height: 11.67,),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Center(child: Image.asset('assets/images/inactive_elipse.png',width: 20,height: 20,)),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 32),
                            child: Divider(
                              thickness: 1,
                              color: Color(0xfff5f5f5),
                            ),
                          );
                        },
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 98,),
                Center(
                  child: GestureDetector(
                    onTap:(){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff3A953C),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Proceed to Payment',
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
                SizedBox(height:16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}