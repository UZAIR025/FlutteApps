import 'package:flutter/material.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width:size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/image/${hotel['image']}"
                ),
              ),
            ),
          ),
          const SizedBox(height:10),
          Text(hotel['place'],
          style: Styles.headLineStyle2.copyWith(color: Colors.white38),
          ),
          const SizedBox(height:8),
          Text(hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(height:10),
          Text('\$${hotel['price']}/Day',
            style: Styles.headLineStyle1.copyWith(color: Colors.white70),
          )

        ],
      ),
      );

      /*child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(

            ),
          )
        ],
      ),// IMAGE */
  }
}
