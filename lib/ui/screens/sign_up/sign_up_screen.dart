import 'package:flutter/material.dart';
import '../../custom_widgets/signup_image_custom_clipper.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            ClipPath(
              clipper: SignUpHeaderImageClipper(),
              child: Container(
                height: height*0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: NetworkImage('https://images.pexels.com/photos/914396/pexels-photo-914396.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                ),
              ),
            )
        ],
      ),
    );
  }
}

