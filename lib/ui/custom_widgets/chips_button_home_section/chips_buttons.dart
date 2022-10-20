import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';

class ChipsButtons extends StatelessWidget {
   ChipsButtons({Key? key,required this.text,required this.onpress,required this.checkForClick}) : super(key: key);

  /// parameters to be used in class

    String text;
    VoidCallback onpress;
    bool checkForClick;
  @override
  Widget build(BuildContext context) {

    /// inkwell for making it funcitonal

    return  InkWell(
      onTap: onpress,

      /// container having decoration and chip action text

      child: Container(

        /// decoration

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: checkForClick ? kLightSky.withOpacity(0.9) : null,
        ),

        child: Padding(
          padding: const EdgeInsets.all(10.0),

          /// chips action text

          child: Text(text),
        ),
      ),
    );
  }
}
