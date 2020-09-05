import 'package:flutter/material.dart';
import 'package:flutter_app_changle_color_test/widgets/Custom_buttom.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   Color color=Colors.lime;

   List<int> count=[0,0,0,0,0];
   int text=0;
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
                    text: count[0].toString(),
                    onTap: (){
                      setState(() {
                        color=Colors.lime;
                        text=count[0];
                      });
                    },
                  ),
                  SizedBox(width: 15,),
                  CustomButtom(
                    color: Colors.deepPurple,
                    text: count[1].toString(),
                    onTap: (){
                      setState(() {
                        color=Colors.deepPurple;
                        text=count[1];
                      });
                    },
                  ),
                  SizedBox(width: 15,),
                  CustomButtom(
                    color: Colors.tealAccent,
                    text: count[2].toString(),
                    onTap: (){
                      setState(() {
                        color=Colors.tealAccent;
                        text=count[2];
                      });
                    },
                  ),
                  SizedBox(width: 15,),
                  CustomButtom(
                    color: Colors.blue,
                    text: count[3].toString(),
                    onTap: (){
                      setState(() {
                        color=Colors.blue;
                        text=count[3];
                      });
                    },
                  ),
                  SizedBox(width: 15,),
                  CustomButtom(
                    color: Colors.greenAccent,
                    text: count[4].toString(),
                    onTap: (){
                      setState(() {
                        color=Colors.greenAccent;
                        text=count[4];
                      });
                    },
                  ),

                ],
              ),

            ),
            SizedBox(height: 20,),
            Center(
              child: CustomButtom(
                height: 150,
                color: color,
                text: text.toString(),
                onTap: (){
                  setState(() {
                    if(color==Colors.lime)
                    {
                      count[0]++;
                      text=count[0];
                    }
                    else if(color==Colors.deepPurple)
                    {
                      count[1]++;
                      text=count[1];
                    }
                    else if(color==Colors.tealAccent)
                    {
                      count[2]++;
                      text=count[2];
                    }
                    else if(color==Colors.blue)
                    {
                      count[3]++;
                      text=count[3];
                    }
                    else if(color==Colors.greenAccent)
                    {
                      count[4]++;
                      text=count[4];
                    }
                  });


                },
              ),
            )
          ],
        ),
      ),

    );
  }
}
