import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/app_layout.dart';

import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({Key? key,
    required this.firstText,
    required this.secondText,
    required this.alignment, this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black54),),
        SizedBox(height: AppLayout.getHeight(5),),
        Text(secondText,style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4.copyWith(color: Colors.black54),),
      ],
    );
  }
}
