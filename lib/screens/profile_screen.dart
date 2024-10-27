import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_style.dart';
import 'package:untitled/utils/layout_builder_widget.dart';
import 'package:untitled/widget/coloumn_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(15)),

        children: [
          SizedBox(height: AppLayout.getHeight(40),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(80),
                width: AppLayout.getWidth(80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image/airlines.png"
                    )
                  )
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start ,
                children: [
                  Text("Book Tickets",style: Styles.headLineStyle1,),
                  Text("New-York",style: Styles.headLineStyle3,),
                  SizedBox(height: AppLayout.getHeight(8),),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Colors.white30,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black54,
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Styles.bgColor,size: 15,
                          ),
                        ),
                        Text(" Premium status ", style: Styles.textStyle,)
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                      child: Text("Edit",style: Styles.textStyle,))
                ],

              )

            ],

          ),
          SizedBox(height: AppLayout.getHeight(15),),
          Divider(color: Colors.grey.shade400,),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(80),

                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),

                ),

              ),
              Positioned(
                top: -40,
                right:-45,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0XFF264CD2)),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(10)),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.orangeAccent,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                        size: 27,
                      ),

                    ),
                    SizedBox(width: AppLayout.getWidth(15),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("you\'v got a new award",
                        style: Styles.headLineStyle2.copyWith(color: Colors.white70,fontSize: 22),),
                        Text("You have 95 flights in a year",
                          style: Styles.headLineStyle3.copyWith(color: Colors.white70,),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: AppLayout.getHeight(20),),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          SizedBox(height: AppLayout.getHeight(25),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(25)),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(
            color: Colors.grey.shade400,
              spreadRadius: 3,
              blurRadius: 2,
            ),
              ],
          ),
            
            child: Column(
              children: [
                Text("19990725", style:TextStyle(fontSize: 35, fontWeight: FontWeight.w700) ,),
                SizedBox(height: AppLayout.getHeight(15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued",style: Styles.headLineStyle3,),
                    Text("11 June 2022",style: Styles.headLineStyle3,),
                  ],
                ),
                SizedBox(height: AppLayout.getHeight(15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "25542", secondText: "Miles"  , alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: "Airlines CO", secondText: "Received from"  , alignment: CrossAxisAlignment.end, isColor: true,),

                  ],
                ),
                SizedBox(height: AppLayout.getHeight(15),),
                AppLayoutBuilderWidget(section: 12, isColor: true,),
                SizedBox(height: AppLayout.getHeight(15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24", secondText: "Miles"  , alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: "McDonal\'s ", secondText: "Received from"  , alignment: CrossAxisAlignment.end, isColor: true,),

                  ],
                ),
                SizedBox(height: AppLayout.getHeight(15),),
                AppLayoutBuilderWidget(section: 12, isColor: true,),
                SizedBox(height: AppLayout.getHeight(15),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "52 750", secondText: "Miles"  , alignment: CrossAxisAlignment.start, isColor: true,),
                    AppColumnLayout(firstText: "Exuma ", secondText: "Received from"  , alignment: CrossAxisAlignment.end, isColor: true,),

                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: AppLayout.getHeight(20),),
          InkWell(
            onTap: ()=>print("You are tapped"),
            child: Center(
                child: Text("How to get more miles",style: Styles.textStyle.copyWith(fontWeight: FontWeight.w500,color: Styles.primaryColor),)),
          )

        ],

      ),
    );
  }
}
