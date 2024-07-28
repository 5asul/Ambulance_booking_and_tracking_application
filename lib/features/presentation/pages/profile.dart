import 'package:flutter/material.dart';

import '../../../config/theme/app_themes.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(

      body:SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: screenSize.width*0.05,
          vertical: screenSize.height*0.03),
          child: Column(

            children: [
              // SizedBox(
              //   height: screenSize.height*0.03,
              // ),
              Container(
                padding: EdgeInsets.only(right: screenSize.width*0.75),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                      size: screenSize.width*0.1,
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.only(
                bottom: screenSize.height*0.02),
                child: Center(
                  child: CircleAvatar(
                    radius: screenSize.width*0.2,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: screenSize.width*0.25,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: screenSize.height*0.001,
              // ),
              Text(
                  'AHMED OBAD',
                style: TextStyle(
                  fontSize: screenSize.width*0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: screenSize.height*0.02,
              ),
              Column(
                children: [
                  Text(
                    '16109394013809183'
                  ,
                  style: TextStyle(
                    fontSize: screenSize.width*0.05,
                    color: Colors.black,
                  ),
                  textAlign:  TextAlign.center ,
                  ),
                  Text(
                    '+967 775 187 535'
                    ,
                    style: TextStyle(
                      fontSize: screenSize.width*0.05,
                      color: Colors.black,
                    ),
                    textAlign:  TextAlign.center ,
                  ),
                  Text(
                    'AHMEDABBAD2@GMAIL.COM'
                    ,
                    style: TextStyle(
                      fontSize: screenSize.width*0.05,
                      color: Colors.black,
                    ),
                    textAlign:  TextAlign.center ,
                  ),
                  Text(
                    'HADRAMAOUT - MUKALLA'
                    ,
                    style: TextStyle(
                      fontSize: screenSize.width*0.05,
                      color: Colors.black,
                    ),
                    textAlign:  TextAlign.center ,),
                ],
              ),
              SizedBox(
                height: screenSize.height*0.020,
              ),
              Container(
                child: Text(
                  'YOUR CNIC',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenSize.width*0.08,
                    color: Colors.black,
                  ),
                  textAlign:  TextAlign.center ,
                ),
              ),
              Container(
                padding: EdgeInsets.all(screenSize.width*0.02),
                child: Image.asset('assets/images/CNICCard.png'),
              ),
              SizedBox(
                height: screenSize.height*0.05,
              ),
              MaterialButton(
                height: screenSize.height*0.07,
                onPressed: (){
                  Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
                },
                color: primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.22),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        color: background,
                      ),
                      SizedBox(
                        width: screenSize.width*0.03,
                      ),
                      Text(
                        "LOGOUT",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: background,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
