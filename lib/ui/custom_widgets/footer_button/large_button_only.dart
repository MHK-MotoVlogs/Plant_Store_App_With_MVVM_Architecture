import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';

class OnlyButton extends StatelessWidget {
  OnlyButton({Key? key,required this.txt}) : super(key: key);

  /// parameters use in class

  String txt;
  @override
  Widget build(BuildContext context) {

    /// main container having button text and decoration

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          txt,
          style: TextStyle(color: Colors.white,fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),

      /// Button decoration

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: kDarkGreen,
      ),
    );
  }
}
