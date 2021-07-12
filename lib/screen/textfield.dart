import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  /// This class is a resuable Input box
  final String hintText;
  final Function validator;
  final Function onSaved;
  final Function onChanged;
  final bool toggleEye;
  //final KeyboardType keyboard;
  final String init;
  final bool isPassword;
  final Color isPasswordColor;
  final bool showObscureText;
  final bool obscureText;
  final Color styleColor;
  final Color hintStyleColor;
  final bool enable;
  final String labelText;
  final dynamic maxLines;
  final Color borderColor;
  final Widget prefix;
  final Widget suffix;
  final Key key;
  final TextEditingController controller;
  final List<TextInputFormatter> inputFormatters;
  final FocusNode focusNode;
  final bool alignLabelWithHint;
  final FloatingLabelBehavior floatingLabelBehavior;

  Input(
      this.hintText,
        this.validator,
        this.onSaved,
        this.toggleEye,
        this.init,
        this.isPassword,
        this.isPasswordColor,
        this.showObscureText,
        this.obscureText,
        // this.keyboard,
        this.styleColor,
        this.hintStyleColor,
        this.enable,
        this.labelText,
        this.maxLines,
        this.borderColor,
        this.onChanged,
        this.prefix,
        this.suffix,
        this.key,
        this.controller,
        this.inputFormatters,
        this.focusNode,
        this.alignLabelWithHint,
        this.floatingLabelBehavior);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      controller: controller,
      key: key,
      enabled: enable,
      style: TextStyle(color: Color(0xFF3C4043)),
      cursorColor: styleColor,
      obscureText: obscureText,
      maxLines: maxLines,
      decoration: InputDecoration(
        floatingLabelBehavior: floatingLabelBehavior,
        prefixIcon: prefix,
        // suffixIcon: suffix,
        filled: true,
        fillColor: !enable ? Color(0xFFF7F7F7) : Colors.transparent,
        //alignLabelWithHint: true,
        //  labelText: hintText,
        hintText: hintText,
        // prefixIcon: FaIcon(FontAwesomeIcons.arrowLeft, size: 10),
        hintStyle: TextStyle(color: Color(0xffbababa),),
        isDense: true,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        // contentPadding: EdgeInsets.only(top: 10, bottom: 10),
        suffixIcon: isPassword
            ? GestureDetector(
          onTap:(){},
              child: Icon(
            showObscureText ? Icons.visibility : Icons.visibility_off,
            color: Color(0xffbababa),
          ),
        )
            : suffix,
      ),
      initialValue: init,
      // keyboardType: keyboard == KeyboardType.EMAIL
      //     ? TextInputType.emailAddress
      //     : keyboard == KeyboardType.NUMBER
      //         ? TextInputType.number
      //         : keyboard == KeyboardType.PHONE
      //             ? TextInputType.phone
      //             : TextInputType.text),
    );
  }
}