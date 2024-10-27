import 'package:flutter/material.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/ticket_tabs.dart';
import 'package:untitled/widget/icon_text.dart';
import '../utils/app_style.dart';
import '../widget/double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          const SizedBox(height: 40),
          Text("What are \n you looking for?",style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          SizedBox(height: AppLayout.getHeight(40),),
          AppTicketTabs(firstTab: "Airline tickets",secondTab: "Hotels"),
          SizedBox(height: AppLayout.getHeight(20),),
          const AppIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: AppLayout.getHeight(10),),
          const AppIcon(icon: Icons.flight_land_rounded, text: "Arrivals"),
          SizedBox(height: AppLayout.getHeight(20),),
          Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12),horizontal: AppLayout.getHeight(12)),
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),

        ),
            //Icon(icon,color: Colors.purple,),
            //SizedBox(height:AppLayout.getHeight(30)),
            child: Center(child: Text("Find ticket",style: Styles.textStyle)),


      ),
          SizedBox(height: AppLayout.getHeight(20),),
          const AppDoubleText(bigText:"Upcoming flight", smallText: "view all"),
          SizedBox(height: AppLayout.getHeight(20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.40,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10),vertical: AppLayout.getHeight(10)),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                ),

                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/image/searchphoto.jpg"
                          ),
                        ),

                      ),
                    ),
                    SizedBox(height: AppLayout.getHeight(10),),
                    Text("20% offer for you,only this week ",style: Styles.headLineStyle2,),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children:[Container(
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10),vertical: AppLayout.getHeight(10)),
                        height: AppLayout.getHeight(190) ,
                        width: size.width*0.45,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",style: Styles.headLineStyle2,),
                            SizedBox(height: AppLayout.getHeight(10),),
                            Text("Take the survey about our services and discount",style: Styles.headLineStyle3.copyWith(color: Colors.black54)),
                          ],
                        )
                    ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color: Colors.teal),
                            color: Colors.transparent
                        ),
                      ))

                    ],

                  ),
                  SizedBox(height: AppLayout.getHeight(10),),
                  Container(
                    height: AppLayout.getHeight(190),
                    width: size.width*0.45,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(12),horizontal: AppLayout.getWidth(12)),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink,
                      
                    ),
                    child: Column(
                      children: [
                        Text("Take love",style: Styles.headLineStyle2.copyWith(color: Colors.black),),
                        RichText(
                            text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Hi",
                              style: TextStyle(fontSize: 30)
                            ),
                            TextSpan(
                                text: "Hi",
                                style: TextStyle(fontSize: 50)
                            ),
                            TextSpan(
                                text: "Hi",
                                style: TextStyle(fontSize: 30)
                            ),
                          ]
                        ))
                      ],
                    ),
                  )

                ],
              )
            ],
          )
        ],
      ),

    );
  }
}
