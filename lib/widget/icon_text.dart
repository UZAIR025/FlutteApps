import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIcon({Key? key,required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12),horizontal: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),

      ),
      child: Row(
        children: [
          Icon(icon,color: Colors.purple,),
          SizedBox(height:AppLayout.getHeight(30)),
          Text(text,style: Styles.textStyle,),
        ],
      ),
    );
  }
}
