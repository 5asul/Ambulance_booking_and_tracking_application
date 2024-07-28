import 'package:ambulance_booking_and_tracking_application/config/theme/app_themes.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/book_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class BookAmbulanceCard extends StatefulWidget {
  final String imageSource;
  final String name;
  const BookAmbulanceCard({super.key, required this.imageSource, required this.name});

  @override
  State<BookAmbulanceCard> createState() => _BookAmbulanceCardState();
}

class _BookAmbulanceCardState extends State<BookAmbulanceCard> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BookCase(),
          ),
        );
      },
      child:   Container(
        width: screenSize.width*0.5,
        height: screenSize.height*0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: primary),
        ),
        child: Column(
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(10.0),
                  child: Image.asset(widget.imageSource)
              ),
            ),
            SizedBox(
              height: screenSize.height*0.01,
            ),
            Text(
              widget.name,
              style: TextStyle(
                  fontSize: screenSize.width*0.07,
                  fontWeight: FontWeight.bold
              ),
            ),

          ],
        ),
      ),
    );
  }
}


