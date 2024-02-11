import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Container(decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage('assets/images/cofee2.jpg'),fit: BoxFit.cover
        )),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Container(
                width: 400,
                height: 400,
                color: Colors.brown,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: TabBar(
                          tabs: [
                            Tab(text: 'Sign In'),
                            Tab(text: 'Sign Up'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.brown, // Example background color
                          child: TabBarView(
                            children: [
                              Column(
                                children: [SizedBox(height: 30,),
                                  TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.mail),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        hintText: 'Email Address'
                                    ),),
                                  SizedBox(height: 30,),
                                  TextField(obscureText: true,decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      hintText: 'Password'
                                  ),),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Sign In"),
                                  ),
                                  TextButton(onPressed: (){

                                  }, child: Text('Forgot Password'))

                                ],

                              )
                              ,
                              Column(
                                children: [
                                  SizedBox(height: 30,),
                                  TextField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.mail),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        hintText: 'Email Address'
                                    ),),
                                  SizedBox(height: 30,),
                                  TextField(obscureText: true,decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      hintText: 'Password'
                                  ),),
                                  SizedBox(height: 30,),
                                  TextField(obscureText: true,decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      hintText: 'Confirm Password'
                                  ),),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Sign Up"),
                                  ),


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
