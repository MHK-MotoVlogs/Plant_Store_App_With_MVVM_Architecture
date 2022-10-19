import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';

import '../../../core/utils/consts/ui_colors/ui_colors.dart';

class TextFormFields extends StatelessWidget {
  TextFormFields({Key? key,required this.prefixIconData,required this.hint,this.suffixIconData}) : super(key: key);
  late IconData prefixIconData;
  late String hint;
  late IconData? suffixIconData;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: kTextFormFieldStyle,
      cursorColor: kDarkGreen,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIconData,color:kDarkGreen,),
          hintText: hint,
          filled: true,
          suffixIcon: Icon(
            suffixIconData,color: kDarkGreen,
          ),
          hintStyle: kTextFormFieldStyle,
          fillColor: kTextFieldBackground.withOpacity(0.2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none,
          )
      ),
    );}
}

