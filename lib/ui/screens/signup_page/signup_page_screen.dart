import 'package:flutter/material.dart';
import 'package:plant_store_app/core/utils/consts/heading_text_font/heading_text_font.dart';
import 'package:plant_store_app/core/utils/consts/network_images_urls/network_images_urls.dart';
import 'package:plant_store_app/core/utils/consts/ui_colors/ui_colors.dart';
import 'package:plant_store_app/ui/custom_widgets/footer_button/rounded_button.dart';
import 'package:plant_store_app/ui/custom_widgets/text_form_field/text_form_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(

        /// scroll view used to overcome exception when keyboared pops up.

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: height*0.1,),

              ///Stack having page name and subtitle with a leaf image

              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      /// Title of Page

                      Text("Register",style: kHeaderFontStyle,textAlign: TextAlign.center,),
                      SizedBox(
                        height: height * 0.01,
                      ),

                      /// subtitle instruction

                      Text("Create Your New Account",style: kHeaderSubTitleFontStyle,textAlign: TextAlign.center,),
                    ],
                  ),

                  /// positioning the leaf image in columns

                  Positioned(
                    right: 0,
                    child: Image.network(
                      kSmallLeafImage,
                      height: width*0.18,
                      width: width*0.18,
                    ),
                  ),
                ]
              ),
              SizedBox(height: height*0.06,),

              /// Text form fields class for full name

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                child: TextFormFields(prefixIconData: Icons.person, hint: "Full Name"),
              ),

              /// Text Form Fields class for email

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                child: TextFormFields(prefixIconData: Icons.mail_sharp, hint: "email@gmail.com"),
              ),

              /// Text Form Fields class for password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                child: TextFormFields(prefixIconData: Icons.lock, hint: 'Password'),
              ),

              /// Text Form Fields class for confirm password


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                child: TextFormFields(prefixIconData: Icons.lock, hint: "Confirm Password"),
              ),
              SizedBox(height: height*0.03,),

              /// Text for agreement to policies

              Text.rich(
                  TextSpan(
                children: [
                  TextSpan(text: "By signing you agree to our ",style: TextStyle(color: kDarkGreen,fontWeight: FontWeight.bold)),
                  TextSpan(text: "Team of use "),
                  TextSpan(text: "\nand",style: TextStyle(color: kDarkGreen,fontWeight: FontWeight.bold)),
                  TextSpan(text: " privacy notice"),
                ]
              ),textAlign: TextAlign.center,),
              SizedBox(height: height*0.07,),

              /// LargeButton class for footer button and question action.

              LargeButton(txt: "Sign Up", question: "Don't have an account?", action: " Sign Up"),
              ],
          ),
        ),
      ),
    );
  }
}
