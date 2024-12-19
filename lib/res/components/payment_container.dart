import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentContainer extends StatelessWidget {
  String title;
  Icon icon;
    PaymentContainer({super.key,required this.icon,required this.title});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width *1;
    return  Container(
      height:height*0.13,
      width:width*0.25,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          color:Colors.white,
          boxShadow:[
            BoxShadow(color:Colors.grey,
                blurRadius:5
            )
          ]
      ),
      child:Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon.icon,color:Colors.green,size:45,),
          Text(title,style:TextStyle(fontSize:12,fontWeight:FontWeight.bold),)
        ],
      ),

    );
  }
}
