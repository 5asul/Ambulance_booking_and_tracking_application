import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme/app_themes.dart';


class RecordsCard extends StatefulWidget {
  final String name;
  final String phone;
  final String address;
  final String type;
  final String date;
  final String state;
  const RecordsCard({super.key, required this.name, required this.phone, required this.address, required this.type, required this.date, required this.state});

  @override
  State<RecordsCard> createState() => _RecordsCardState();
}

class _RecordsCardState extends State<RecordsCard> {

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){},
      child:Container(
        margin: EdgeInsets.symmetric(vertical: screenSize.height*0.01),
        width: screenSize.width*1.0,
        height: screenSize.height*0.18,
        decoration: BoxDecoration(
          color: frame,
          borderRadius: BorderRadius.circular(10.0),
          // border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [

            Container(
              width: screenSize.width*0.57,
              padding: EdgeInsets.only(right: screenSize.width*0.03),
              child: Column(
                children: [
                  Container(
                    margin:EdgeInsets.only(top: screenSize.height*0.01,
                      left: screenSize.width*0.03,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Name: ${widget.name}',
                          overflow: TextOverflow.ellipsis,
                          style:GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: screenSize.width*0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: screenSize.height*0.001,
                      left: screenSize.width*0.03,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Phone: ${widget.phone}',
                          overflow: TextOverflow.ellipsis,
                          style:GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: screenSize.width*0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: screenSize.height*0.001,
                      left: screenSize.width*0.03,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Address: ${widget.address}',
                          overflow: TextOverflow.ellipsis,
                          style:GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: screenSize.width*0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: screenSize.height*0.001,
                      left: screenSize.width*0.03,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Type: ${widget.type}',
                          overflow: TextOverflow.ellipsis,
                          style:GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: screenSize.width*0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: screenSize.height*0.001,
                      left: screenSize.width*0.03,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Date: ${widget.date}',
                          overflow: TextOverflow.ellipsis,
                          style:GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: screenSize.width*0.045,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: screenSize.width*0.015,
                  top: screenSize.height*0.01),
              child: Align(
                alignment: Alignment.topRight,
                child: MaterialButton(
                  minWidth: screenSize.width*0.3,
                  height: screenSize.height*0.045,
                  onPressed: (){
                  },
                  color: (widget.state=='PENDING')?Colors.amberAccent:(widget.state=='COMPLETED')?
                      Colors.green:Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text(
                    "${widget.state}",
                    style: TextStyle(
                      fontSize: screenSize.width*0.035,
                      fontWeight: FontWeight.bold,
                      color: background,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
      ,
    );
  }
}
