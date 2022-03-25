import 'package:dualtheme/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Darktheme();
  }
}

class Darktheme extends StatefulWidget {
  const Darktheme({
    Key? key,
  }) : super(key: key);

  @override
  State<Darktheme> createState() => _DarkthemeState();
}

class _DarkthemeState extends State<Darktheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light ? lighttheme : darktheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dual Theme App'),
        ),
        body: Center(
          child: Column(
            children: [

               Container(
                 margin: EdgeInsets.only(left: 250),
                 child: Switch(
                    value: light,
                    onChanged: (state) {
                      setState(() {
                          light = state;
                        if (light == true) {
                          print("heyy");
                        } else {
                          print("byee");
                        }
                      
                      });
                    }),
               ),

              SizedBox(height: 90,),
  Text("Log In",style: TextStyle( fontSize: 30,)
   
    
  ),
  SizedBox(height: 40,),
          //  SizedBox(height: 180,),
              Container(
                width: 300,
                child: TextField(

  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    hintText: "Enter a username",
    prefixIcon: IconButton(
      onPressed: (){},
      icon: Icon(Icons.person),
    ),
  ),
),
              ),SizedBox(height: 30,),
               Container(
                width: 300,
                child: TextField(

  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    hintText: "Enter password",
    prefixIcon: IconButton(
      onPressed: (){},
      icon: Icon(Icons.lock ),
    ),
  ),
),
              ),
              SizedBox(height: 20,),
            
              Container(
                
                width: 300,
                height: 45,
                child: ElevatedButton(onPressed: (){}, child:  Text('Verfiy'))),
             
            ],
          ),
        ),
      ),
    );
  }
}
