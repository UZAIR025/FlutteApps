import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_style.dart';
import 'package:untitled/widget/thick_contaner.dart';

import '../widget/coloumn_layout.dart';

class Ticketview extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const Ticketview({Key? key,required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.9 ,
      height: AppLayout.getHeight(180),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // orange part of the card
            Container(
              decoration: BoxDecoration(
                color: isColor== null? Colors.deepOrange:Colors.white70,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21)) )
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                        style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3.copyWith(color: Colors.black54)),
                      const Spacer(),
                      ThickContainers(isColor: isColor, ),
                      Expanded(child: Stack(
                          children : [
                          SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(

                            builder: (BuildContext context, BoxConstraints constraints) {
                              print("The witdh is ${constraints.constrainWidth()}");
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,

                                children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>  SizedBox(
                                  height: 3,width: 1,child: DecoratedBox(decoration: BoxDecoration(
                                    color: isColor ==null? Colors.white: Colors.black54
                                ),),

                                )
                                ),
                              );
                            },

                          ),
                        ),
                          Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded, color: isColor==null? Colors.white:Colors.black54,) ,))
                          ],
                      )),

                      ThickContainers(isColor: isColor,),
                      const Spacer(),
                      Text(ticket['to']['code'],style: isColor== null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black54),),
                    ],

                  ),
                  const SizedBox(height:5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text(ticket['from']['name'],style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4.copyWith(color: Colors.black54),),
                      ),
                      Text(ticket['flying time'],style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle4.copyWith(color: Colors.black54),),
                      SizedBox(
                        width: AppLayout.getWidth(100), child: Text(ticket['to']['name'],textAlign: TextAlign.end,style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4.copyWith(color: Colors.black54),),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            // green part of the card
            Container(
              color: isColor==null? Colors.lightGreen: Colors.white70,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:  Styles.bgColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>  SizedBox(
                          width: 5, height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: isColor==null? Colors.white: Colors.grey.shade200
                            ),
                          ),
                        )) ,
                      );
                    },

                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:  Styles.bgColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Bottom part ticket
            Container(
                decoration: BoxDecoration(
                    color: isColor==null? Colors.lightGreen: Colors.white70,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null? 21:0),bottomRight: Radius.circular(isColor==null? 21:0) )
                ),
              padding : const EdgeInsets.all(16),
              child : Column (
                children: [
                  Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "DATE    ", secondText: "date",alignment: CrossAxisAlignment.start,isColor: isColor,),
                      AppColumnLayout(firstText: "departure", secondText: "Departure time",alignment: CrossAxisAlignment.center,isColor: isColor,),
                      AppColumnLayout(firstText: ticket["number"].toString(), secondText: "December",alignment: CrossAxisAlignment.end,isColor: isColor,),

                    ],

                  ),
                ],
              )

            ),
          ],
        ),
      ),
    );
  }
}
