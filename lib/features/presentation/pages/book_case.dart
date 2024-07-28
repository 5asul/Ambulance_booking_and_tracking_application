import 'dart:async';
import 'dart:io';

import 'package:ambulance_booking_and_tracking_application/config/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class BookCase extends StatefulWidget {
  const BookCase({super.key});

  @override
  State<BookCase> createState() => _BookCaseState();
}

class _BookCaseState extends State<BookCase> {
  File ? _selectedImage;
  Future _pickImageFromCamera()async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage== null) return;{
      setState(() {
        _selectedImage = File(returnedImage.path);
      });
    }
  }

  Future <void>_dialogBuilder(BuildContext context){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text(
              'Alert',
              style: TextStyle(
                fontSize: 15.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            content: Text(
              'Are you sure to book this case?',
              style: TextStyle(fontSize: 10.0),
            ),
            actions: [
              TextButton(
                  onPressed: (){

                  },
                  child: Text(
                    'Close'
                  ),
              ),
              TextButton(
                  onPressed: (){

                  },
                  child: Text(
                    'Confirm'
                  )
              ),
            ],
          );
        });
  }
  
  bool majorSwitchval = false;
  bool minorSwitchval = false;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: screenSize.width*0.05,
              vertical: screenSize.height*0.05),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: screenSize.width*0.50,
                    child: Text(
                      'BOOK AN AMBULANCE',
                      style: TextStyle(
                          height: screenSize.height*0.0013,
                          fontSize: screenSize.width*0.075,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ),
                  Container(
                      width: screenSize.width*0.3,
                      child: Image.asset('assets/images/ambulance.png',)
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Major',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: screenSize.width*0.06,
                                fontWeight: FontWeight.bold),
                          )
                        ),
                        SizedBox(width: screenSize.width*0.02),
                        Switch(value: majorSwitchval,
                            activeColor: primary,
                            inactiveTrackColor: background,
                            onChanged: (val){
                          setState(() {
                            majorSwitchval =val;
                          });
                            })
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: screenSize.width*0.15),
                    child: Row(
                      children: [
                        Text(
                            'Minor',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: screenSize.width*0.06,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        SizedBox(width: screenSize.width*0.05),
                        Switch(value: minorSwitchval,
                            activeColor: primary,
                            inactiveTrackColor: background,
                            onChanged: (val){
                              setState(() {
                                minorSwitchval =val;
                              });
                            })
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: screenSize.height*0.02),
                child: Image.asset('assets/images/map.png',
                fit: BoxFit.cover,),
                width: screenSize.width*1.0,
                height: screenSize.height*0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenSize.width*0.05),
                  color: background,
                  border: Border.all(color: primary, width: screenSize.width*0.005),
                ),

              ),
              Container(
                width: screenSize.width*1.0,
                child: Row(
                  children: [
                    Container(
                      child: MaterialButton(
                        minWidth: screenSize.width*0.7,
                        height: screenSize.height*0.07,
                        onPressed: ()=>_dialogBuilder(context),
                        color: primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.pin_drop,
                              color: background,
                            ),
                            SizedBox(
                              width: screenSize.width*0.03,
                            ),
                            Text(
                              "BOOK CASE",
                              style: TextStyle(
                                fontSize: screenSize.width*0.07,
                                fontWeight: FontWeight.bold,
                                color: background,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width*0.03,
                    ),
                    Flexible(
                      child: MaterialButton(
                        height: screenSize.height*0.07,
                        onPressed: () async{
                          await _pickImageFromCamera();
                        },
                        color: primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(
                          Icons.upload,
                          color: background,
                          size: screenSize.width*0.09,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}
