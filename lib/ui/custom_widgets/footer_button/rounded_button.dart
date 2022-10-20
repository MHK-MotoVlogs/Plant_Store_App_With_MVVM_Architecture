import 'package:flutter/material.dart';
import 'package:plant_store_app/ui/custom_widgets/footer_button/large_button_only.dart';

import '../../../core/utils/consts/ui_colors/ui_colors.dart';

class LargeButton extends StatelessWidget {
  LargeButton({Key? key,required this.txt,required this.question,required this.action}) : super(key: key);

  /// Parameters used in class

  late String txt;
  late String question;
  late String action;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),

      /// Main column for button and instruction

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          /// Button class having custom button widget

          OnlyButton(txt: txt),

          /// Footer Text or instruction

          Padding(
            padding: const EdgeInsets.only(top: 20.0),

            /// Rich text used for decoration line of text

            child: Text.rich(
              TextSpan(
                  children: [

                    /// question portation and its style

                    TextSpan(
                      text:question,
                      style: TextStyle(
                        color: kDarkGreen,
                      ),
                    ),

                    /// answer portation and its style


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
