import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  FittedBox(
      child:
      Container(
        child: Row(
          children: [
            //Airlines Ticket
            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                color: Colors.white70,
              ),
              child: Center(child:Text(firstTab)),
            ),
            // Hotels

            Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10), vertical: AppLayout.getHeight(10)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                color: Colors.white70,
              ),
              child: Center(child:Text(secondTab)),
            ),

          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
          color: Colors.yellowAccent,
        ),
      ),
    );
  }
}
