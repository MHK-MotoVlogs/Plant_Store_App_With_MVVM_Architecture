import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';

import '../../../core/utils/consts/ui_colors/ui_colors.dart';

class TextFormFields extends StatelessWidget {
  TextFormFields({Key? key,required this.iconData,required this.hint}) : super(key: key);
  late IconData iconData;
  late String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child: TextFormField(
        style: kTextFormFieldStyle,
        cursorColor: kDarkGreen,
        decoration: InputDecoration(
            prefixIcon: Icon(iconData,color:kDarkGreen,),
            hintText: hint,
            filled: true,
            hintStyle: kTextFormFieldStyle,
            fillColor: kTextFieldBackground.withOpacity(0.2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide.none,
            )
        ),
      ),
    );}
}

