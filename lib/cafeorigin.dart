import 'package:cafesample/signinup.dart';
import 'package:flutter/material.dart';

class Mycafeorigin extends StatelessWidget {
  const Mycafeorigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          child: Stack(
            children: [
              Container(decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage('assets/images/cofee1.jpg'),fit: BoxFit.cover))),
              Positioned(top: 600,child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(70)),height: 300,width: 401,child:
    Column(
    children: [Padding(padding: EdgeInsets.all(30)),
    Text('Welcome to Cofee Shop',style: TextStyle(fontWeight: FontWeight.bold),),
    Padding(padding: EdgeInsets.all(20)),
    Text('Get Wide range of speciality cofee,tea and beverages.',style: TextStyle(fontStyle: FontStyle.italic),),
      Padding(padding: EdgeInsets.all(20)),
      Container(decoration: BoxDecoration(color: Colors.brown,borderRadius: BorderRadius.circular(10)),
      child: TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
      }, child: Text('Get Started',style: TextStyle(color: Colors.white),)),
    )
    ],
    ),))
            ],
          ),
        )
    );
  }
}
