import 'package:flutter/material.dart';
import 'package:plant_store_app/ui/custom_widgets/footer_button/large_button_only.dart';

import '../../../core/utils/consts/ui_colors/ui_colors.dart';

class LargeButton extends StatelessWidget {
  LargeButton({Key? key,required this.txt,required this.question,required this.action}) : super(key: key);
  late String txt;
  late String question;
  late String action;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          /// Button container having text and decoration

          OnlyButton(txt: txt),

          /// Footer Text

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text.rich(
              TextSpan(
                  children: [
                    TextSpan(
                      text:question,
                      style: TextStyle(
                        color: kDarkGreen,
                      ),
                    ),
                    TextSpan(
                        text:action,
                        style: TextStyle(
                          color: kDarkGreen,
                          decoration: TextDecoration.underline,
                        ),
                    )
                  ]
              ),
              textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
