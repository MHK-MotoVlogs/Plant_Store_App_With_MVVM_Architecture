import 'package:flutter/material.dart';
import 'package:plant_store_app/core/services/data/plants_data/plants_data.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';
import 'package:plant_store_app/ui/custom_widgets/chips_button_home_section/chips_buttons.dart';
import 'package:plant_store_app/ui/custom_widgets/reusable_card_plant_expo/reusable_plant_card.dart';
import 'package:plant_store_app/ui/custom_widgets/text_form_field/text_form_field.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        /// Custom Bottom navigar bar

        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                iconSize: 30.0,
                currentIndex: 1,
                selectedItemColor: kDarkGreen,
                unselectedItemColor: kTextFieldBackground.withOpacity(0.5),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.list_alt_sharp), label: ''),
                ],
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Row having profile image of user and Cart button

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipOval(
                    child: Image(
                      fit: BoxFit.fill,
                      height: width * 0.15,
                      width: width * 0.15,
                      image: NetworkImage(
                          "https://th.bing.com/th/id/OIP.babyx7vgr7dgX30cuEdmcgHaJQ?pid=ImgDet&w=207&h=258&c=7"),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                        height: width * 0.15,
                        width: width * 0.15,
                        color: kDarkGreen,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              
              /// Header Text
              
              Text("Lets Find Your \nPlants!",style: kHeaderFontStyle,),
              
              SizedBox(
                height: height * 0.015,
              ),
              

              /// Search Form field for plants

              TextFormFields(
                prefixIconData: Icons.search,
                hint: "Search plants",
                suffixIconData: Icons.mic,
              ),
              SizedBox(
                height: height * 0.015,
              ),

              ///Row of buttons that will direct to another page

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChipsButtons(
                    text: "Recommends",
                    onpress: () {},
                    checkForClick: true,
                  ),
                  ChipsButtons(
                    text: "Top",
                    onpress: () {},
                    checkForClick: false,
                  ),
                  ChipsButtons(
                    text: "InDoor",
                    onpress: () {},
                    checkForClick: false,
                  ),
                  ChipsButtons(
                    text: "OutDoor",
                    onpress: () {},
                    checkForClick: false,
                  ),
                ],
              ),

              SizedBox(
                height: height * 0.015,
              ),

              /// Container having height and width that contain the listView Builder for plant cards

              Container(
                height: width*0.7,
                width: width,

                /// Building list of Plant card

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: PlantsData().plantData.length,
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),

                    /// assigning data to plant card from plants Data class_having list of PlantDetails objects

                    child: PlantCard(category: PlantsData().plantData[index].category, name: PlantsData().plantData[index].name, price: PlantsData().plantData[index].price, imageUrl: PlantsData().plantData[index].imageUrl),
                  );
                }),
              ),

              SizedBox(
                height: height * 0.015,
              ),

              /// Recently Viewed Text and List of Cards

              Text("Recent Viewed",style: kHeaderFontStyle.copyWith(fontSize:15.0),),

              ///Container for sizing

              Container(
                height: width*0.15,
                width: width,

                ///List view builder for card building

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: PlantsData().plantData.length,itemBuilder: (context,index){

                      ///Row having plant image, name , and description

                  return Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: kLightSky,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),

                          ///Image of plant

                          child: Image(
                            image: NetworkImage(PlantsData().plantData[index].imageUrl),
                            height: width*0.15,
                            width: width*0.15,),
                        ),
                      ),
                      SizedBox(width: width*0.02,),

                      ///name and description of plant

                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(PlantsData().plantData[index].name,style: kHeaderSubTitleFontStyle.copyWith(fontWeight: FontWeight.bold),),
                        Text(PlantsData().plantData[index].description,style: kHeaderSubTitleFontStyle,),
                      ],)
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
