import 'package:flutter/material.dart';
class CustomButtom extends StatelessWidget {
  CustomButtom({this.text,this.color,this.onTap,this.height});
  final String text;
  final Color color;
  final Function onTap;
  final double height;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        color: color,
        width: 100,
        child: Center(
          child: Text(text,style: TextStyle(color: Colors.black,fontSize: 25),),
        ),

      ),
    );
  }
}
