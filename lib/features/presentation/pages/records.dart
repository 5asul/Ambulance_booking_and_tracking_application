import 'package:ambulance_booking_and_tracking_application/config/theme/app_themes.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/widgets/records_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(

        child: Container(
          margin: EdgeInsets.only(left: screenSize.width*0.05,
              right: screenSize.width*0.05,
            bottom: screenSize.height*0.08
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: screenSize.width*0.50,
                    child: Text(
                      'BOOK AN AMBULANCE',
                      style: GoogleFonts.inter(
                        textStyle:TextStyle(
                            height: screenSize.height*0.0013,
                            fontSize: screenSize.width*0.075,
                            fontWeight: FontWeight.bold),
                      ),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width*0.03,
                  ),
                  Container(
                      width: screenSize.width*0.35,
                      child: Image.asset('assets/images/ambulance.png',)
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenSize.height*0.05,
                        bottom: screenSize.height*0.01),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'PENDING',
                        style: TextStyle(
                            fontSize: screenSize.width*0.08,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  RecordsCard(
                      name: 'Ahmed Obad',
                      phone: '+967 775 187 535',
                      address: 'Al-Mukalla',
                      type: 'Medical',
                      date: '2/11/2024',
                      state: 'PENDING'),
                  Container(
                    color: Colors.grey.shade500,
                    width: screenSize.width*1.0,
                    height: screenSize.height*0.0055,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenSize.height*0.025,
                        bottom: screenSize.height*0.01),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'COMPLETED',
                        style: TextStyle(
                            fontSize: screenSize.width*0.08,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  RecordsCard(
                      name: 'Ahmed Obad',
                      phone: '+967 775 187 535',
                      address: 'Al-Mukalla',
                      type: 'Medical',
                      date: '2/11/2024',
                      state: 'COMPLETED'),
                  Container(
                    color: Colors.grey.shade500,
                    width: screenSize.width*1.0,
                    height: screenSize.height*0.0055,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: screenSize.height*0.025,
                            bottom: screenSize.height*0.01),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'CANCELED',
                            style: TextStyle(
                                fontSize: screenSize.width*0.08,
                                fontWeight: FontWeight.bold),
                            maxLines: 2,
                          ),
                        ),
                      ),
                      RecordsCard(
                          name: 'Ahmed Obad',
                          phone: '+967 775 187 535',
                          address: 'Al-Mukalla',
                          type: 'Medical',
                          date: '2/11/2024',
                          state: 'CANCELED'),
                      Container(
                        color: Colors.grey.shade500,
                        width: screenSize.width*1.0,
                        height: screenSize.height*0.0055,
                      ),
                    ],
                  ),
                ],
              ),

              // Container(
              //   margin: EdgeInsets.symmetric(vertical: screenSize.height*0.01),
              //   width: screenSize.width*1.0,
              //   height: screenSize.height*0.2,
              //   decoration: BoxDecoration(
              //     color: frame,
              //     borderRadius: BorderRadius.circular(10.0),
              //     // border: Border.all(color: Colors.grey),
              //   ),
              //   child: Row(
              //     children: [
              //
              //       Container(
              //         width: screenSize.width*0.57,
              //         padding: EdgeInsets.only(right: screenSize.width*0.03),
              //         child: Column(
              //           children: [
              //             Container(
              //               margin:EdgeInsets.only(top: screenSize.height*0.01,
              //                 left: screenSize.width*0.03,),
              //               child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Text(
              //                     'Name: Ahmed Obad',
              //                     overflow: TextOverflow.ellipsis,
              //                   style:GoogleFonts.inter(
              //                     textStyle: TextStyle(
              //                       fontSize: screenSize.width*0.045,
              //                       fontWeight: FontWeight.w500,
              //                     ),
              //                   )
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               margin:EdgeInsets.only(top: screenSize.height*0.001,
              //                 left: screenSize.width*0.03,),
              //               child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Text(
              //                     'Phone: +967 775 187 535',
              //                     overflow: TextOverflow.ellipsis,
              //                     style:GoogleFonts.inter(
              //                       textStyle: TextStyle(
              //                         fontSize: screenSize.width*0.045,
              //                         fontWeight: FontWeight.w500,
              //                       ),
              //                     )
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               margin:EdgeInsets.only(top: screenSize.height*0.001,
              //                 left: screenSize.width*0.03,),
              //               child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Text(
              //                     'Address: Hadramout-Al-Mukalla',
              //                     overflow: TextOverflow.ellipsis,
              //                     style:GoogleFonts.inter(
              //                       textStyle: TextStyle(
              //                         fontSize: screenSize.width*0.045,
              //                         fontWeight: FontWeight.w500,
              //                       ),
              //                     )
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               margin:EdgeInsets.only(top: screenSize.height*0.001,
              //                 left: screenSize.width*0.03,),
              //               child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Text(
              //                     'Type: Medical',
              //                     overflow: TextOverflow.ellipsis,
              //                     style:GoogleFonts.inter(
              //                       textStyle: TextStyle(
              //                         fontSize: screenSize.width*0.045,
              //                         fontWeight: FontWeight.w500,
              //                       ),
              //                     )
              //                 ),
              //               ),
              //             ),
              //             Container(
              //               margin:EdgeInsets.only(top: screenSize.height*0.001,
              //                 left: screenSize.width*0.03,),
              //               child: Align(
              //                 alignment: Alignment.centerLeft,
              //                 child: Text(
              //                     'Date: 2/11/2023 - 12:00',
              //                     overflow: TextOverflow.ellipsis,
              //                     style:GoogleFonts.inter(
              //                       textStyle: TextStyle(
              //                         fontSize: screenSize.width*0.045,
              //                         fontWeight: FontWeight.w500,
              //                       ),
              //                     )
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //       Container(
              //         margin: EdgeInsets.only(left: screenSize.width*0.05,
              //         top: screenSize.height*0.01),
              //         child: Align(
              //           alignment: Alignment.topRight,
              //           child: MaterialButton(
              //             minWidth: screenSize.width*0.25,
              //             height: screenSize.height*0.050,
              //             onPressed: (){
              //             },
              //             color: primary,
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(30)
              //             ),
              //             child: Text(
              //               "Pending",
              //               style: TextStyle(
              //                 fontSize: 18.0,
              //                 fontWeight: FontWeight.bold,
              //                 color: background,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
