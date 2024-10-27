import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/screens/ticket_view.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_style.dart';
import 'package:untitled/widget/coloumn_layout.dart';

import '../utils/layout_builder_widget.dart';
import '../utils/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children:[
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getHeight(15)),
          children: [
            SizedBox(height: AppLayout.getHeight(50)),
            Text("Ticket",style: Styles.headLineStyle1,),
            SizedBox(height: AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming",secondTab: "Previous"),
            SizedBox(height: AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15) ),
              child: Ticketview(ticket: ticketlist[0], isColor: true,),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(horizontal: 15,),
              color: Colors.white70,
              child: Column(
                children: [
                  SizedBox(height: AppLayout.getHeight(15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "Flutter DB    ", secondText: "Pessangers",alignment: CrossAxisAlignment.start,isColor: true),
                      AppColumnLayout(firstText: "0718910007", secondText: "Passport",alignment: CrossAxisAlignment.end,isColor: true)
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(15),),
                  const AppLayoutBuilderWidget(section: 15,isColor: false),
                  SizedBox(height: AppLayout.getHeight(15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "044 200 1500 62884", secondText: "Number of e-ticket",alignment: CrossAxisAlignment.start,isColor: true),
                      AppColumnLayout(firstText: "PEOPLES044", secondText: "Booking code",alignment: CrossAxisAlignment.end,isColor: true),
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(15),),
                  const AppLayoutBuilderWidget(section: 15,isColor: false),
                  SizedBox(height: AppLayout.getHeight(15),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/image/visa.png", scale: 11,),
                              Text("*** 0201",style: Styles.headLineStyle3,)
                            ],
                          ),
                          SizedBox(height: AppLayout.getHeight(5),),
                          Text("Payment method",style: Styles.headLineStyle4,)
                        ],
                      ),
                      const AppColumnLayout(firstText: "\$399.99", secondText: "Price",alignment: CrossAxisAlignment.end,isColor: true),

                      //AppColumnLayout(firstText: "044 200 1500 62884", secondText: "Number of e-ticket",alignment: CrossAxisAlignment.start,isColor: true),
                      //AppColumnLayout(firstText: "PEOPLES044", secondText: "Booking code",alignment: CrossAxisAlignment.end,isColor: true),
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(15),),


                ],
              ),
            ),
            // BARCODE
            Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21)),),

            padding: EdgeInsets.only(top: 15,bottom: 15),
            margin: EdgeInsets.only(left: 15,right: 15),
            child:Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              child: ClipRRect(
                borderRadius:BorderRadius.circular(AppLayout.getHeight(15)),
                child: BarcodeWidget(data: 'http://github.com/martinovo', barcode: Barcode.code128(),
                drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 70,
                ),
              ),
            )),
            SizedBox(height: AppLayout.getHeight(25),),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15) ),
              child: Ticketview(ticket: ticketlist[0]),
            ),

          ],
        ),
          Positioned(
            left: 19,
            top: AppLayout.getHeight(260),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
              ),
            ),
          ),
          Positioned(
            right: 19,
            top: AppLayout.getHeight(260),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
              ),
            ),
          ),
        ]
      ),
    );
  }
}
