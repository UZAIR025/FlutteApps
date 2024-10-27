import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int section;
  final double width;
  const AppLayoutBuilderWidget({Key? key, this.isColor, required this.section, this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(

      builder: (BuildContext context, BoxConstraints constraints) {
        print("The witdh is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,

          children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>  SizedBox(
            height: 1,width: width,child: DecoratedBox(decoration: BoxDecoration(
              color: isColor ==null? Colors.white: Colors.black54
          ),),

          )
          ),
        );
      },

    );
  }
}