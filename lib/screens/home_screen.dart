import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/hotels_screen.dart';
import 'package:untitled/screens/ticket_view.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/utils/app_style.dart';

import '../widget/double_text.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Good Morning",style: Styles.headLineStyle3,
                        ),
                        const SizedBox(height: 5,),
                        Text(
                            "Visa Ticket",style: Styles.headLineStyle1,
                        ),
                      ],

                    ),

                    Container(
                      //child: Image.asset("assets/image/image.png"),
                      height: 70,
                      width: 70,
                     decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(12),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/image/airlines.png"
                            )
                     )
                     )
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amberAccent,
                  ) ,
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                  child: Row(
                    children: [
                      const Icon(CupertinoIcons.search),
                      Text(
                          "Search",style: Styles.headLineStyle3,)
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                const AppDoubleText(bigText:"Upcoming flight", smallText: "view all"),
              ],
            ),
          ),
          SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           padding: const EdgeInsets.only(left: 20),
           child: Row(
             children: ticketlist.map((ticket1) => Ticketview(ticket: ticket1)).toList(),
           ),
         ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels ",style: Styles.headLineStyle2,),
                InkWell(
                    onTap: () {print("Please Wait few Minutes");
                    },
                    child: Text("View all ",style: Styles.headLineStyle3,)
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((pradisHotel) => HotelScreen(hotel: pradisHotel)).toList()
            ),
          ),
          //HotelScreen()

        ],
      ) ,

    );
  }
}
