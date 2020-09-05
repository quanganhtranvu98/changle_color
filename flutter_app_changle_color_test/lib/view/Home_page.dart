import 'package:flutter/material.dart';
import 'package:flutter_app_changle_color_test/widgets/Custom_buttom.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text('This is my Test'),
     ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
        child: Column(
          children: [
            Container(
              height: 150,
              //decoration: BoxDecoration(color: Colors.red),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomButtom(
                    height: double.infinity,
                    color: Colors.lime,
                    text: '0',
                    onTap: (){},
                  ),
                  SizedBox(width: 15,),
                  CustomButtom(
                    color: Colors.deepPurple,
                    text: '0',
                    onTap: (){},
                  ),
                  SizedBox(width: 15,),
                  CustomButtom(
                    color: Colors.tealAccent,
                    text: '0',
                    onTap: (){},
                  ),
                  SizedBox(width: 15,),
                  CustomButtom(
                    color: Colors.blue,
                    text: '0',
                    onTap: (){},
                  ),
                  SizedBox(width: 15,),
                  CustomButtom(
                    color: Colors.greenAccent,
                    text: '0',
                    onTap: (){},
                  ),

                ],
              ),

            ),
            SizedBox(height: 20,),
            Center(
              child: CustomButtom(
                height: 150,
                color: Colors.greenAccent,
                text: '0',
                onTap: (){},
              ),
            )
          ],
        ),
      ),

    );
  }
}
