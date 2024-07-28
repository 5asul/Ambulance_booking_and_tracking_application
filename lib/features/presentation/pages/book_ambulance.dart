import 'package:ambulance_booking_and_tracking_application/config/theme/app_themes.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/profile.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/records.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/widgets/book_ambulance_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
class BookAmbulance extends StatefulWidget {
  const BookAmbulance({super.key});

  @override
  State<BookAmbulance> createState() => _BookAmbulanceState();
}

class _BookAmbulanceState extends State<BookAmbulance> {
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
              SizedBox(
                height: screenSize.height*0.05,
              ),
              GridView.builder(
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: cards.length,

                padding: EdgeInsets.all(10.0),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return cards[index];

                },
              ),
              SizedBox(
                height: screenSize.height*0.05,
              ),
              MaterialButton(
                height: screenSize.height*0.07,
                minWidth: screenSize.width*1.0,
                onPressed: (){
                  launch('tel:1122');
                },
                color: primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  "1122 CALL",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: background,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height*0.1,
              ),
              Container(
                width: screenSize.width*1.0,
                child: Row(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          CircleAvatar(

                            radius: 20,
                            backgroundColor: Colors.green,
                            child: Text(
                              '0',
                              style: TextStyle(
                                  color: background
                              ),
                            ),
                          ),
                          MaterialButton(
                            height: screenSize.height*0.07,
                            onPressed: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder:(context)=>Records() ));
                            },
                            color: primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.receipt_rounded,
                                  color: background,
                                ),
                                SizedBox(
                                  width: screenSize.width*0.03,
                                ),
                                Text(
                                  "MY RECORD",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: background,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width*0.03,
                    ),
                    Flexible(
                      child: MaterialButton(
                        height: screenSize.height*0.07,
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ),
                          );
                        },
                        color: primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: background,
                            ),
                            SizedBox(
                              width: screenSize.width*0.03,
                            ),
                            Text(
                              "Profile",
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
              )

            ],
          ),
        ),
      ),
    );
  }
}
List<BookAmbulanceCard> cards =[
  BookAmbulanceCard(
    imageSource: 'assets/images/medical.png',
    name: 'MEDICAL',
  ),
  BookAmbulanceCard(
    imageSource: 'assets/images/accident.png',
    name: 'ACCIDENT',
  ),
  BookAmbulanceCard(
    imageSource: 'assets/images/fire.png',
    name: 'FIRE',
  ),
  BookAmbulanceCard(
    imageSource: 'assets/images/other.png',
    name: 'OTHER',
  )
];