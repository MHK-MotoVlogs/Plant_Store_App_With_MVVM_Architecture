import 'package:flutter/material.dart';

class BottomSheetRows extends StatelessWidget {
  BottomSheetRows({Key? key,required this.heading,required this.Price,required this.style}) : super(key: key);
  TextStyle style;
  String heading;
  String Price;
  @override
  Widget build(BuildContext context) {

    /// Bottom sheet prices row

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        /// Heading

        Text(heading,style: style,),

        /// price

        Text("\$ ${Price}",style: style.copyWith(fontWeight: FontWeight.normal),),
      ],
    );
  }
}
