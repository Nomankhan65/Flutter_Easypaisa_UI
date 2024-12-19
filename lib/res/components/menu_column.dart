import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuColumn extends StatelessWidget {
  String title;
  Icon icon;
    MenuColumn({super.key,required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(icon.icon,color:Colors.green,size:40,),
        SizedBox(height:6,),
        Text(title)
      ],
    );
  }
}
