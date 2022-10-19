import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';
import 'package:plant_store_app/ui/custom_widgets/Login_image_custom_clipper.dart';

class PlantCard extends StatelessWidget {
  PlantCard({Key? key,required this.category,required this.name,required this.price,required this.imageUrl}) : super(key: key);
  late String category;
  late String name;
  late String price;
  late String imageUrl;
  @override
  Widget build(BuildContext context) {

    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    /// card having  image and clipped container
    return   Stack(
        children: [

          ///main stack container

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: width*0.7,
              width: width*0.5,
            ),
          ),

          /// positioning inner container which container clipper

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Stack(
                children: [

                  /// main container of stack which contain a child called column that will
                  /// contain the name category of plant and its price

                  Container(

                    height: width*0.5,
                    width: width*0.5,

                    decoration: BoxDecoration(
                      color: kTextFieldBackground.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          ///Category of plant

                          Text(category,style: TextStyle(color: kDarkGreen),),

                          ///name of plant along with price

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(name,style: TextStyle(color: kDarkGreen),),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                child:    Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                                  child: Text("${price}\$",style: TextStyle(color: kLightGreen),),
                                ),
                              )

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: LogInHeaderImageClipperer(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kLightSky.withOpacity(0.7),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                      ),
                      height: width*0.4,
                      width: width*0.5,
                    ),
                  ),
                ]
            ),
          ),

          /// positioning image of plant in main stack

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image(
                height: width*0.5,
                width: width*0.5,
                image: NetworkImage(imageUrl)),
          ),
        ]
    );
  }
}
