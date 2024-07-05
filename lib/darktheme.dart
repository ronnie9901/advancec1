import 'package:advancec1/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isdark?ThemeMode.light:ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Yo Man !',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                Text('Its a Simple example of  ',style: TextStyle(color: Colors.grey,fontSize: 20),),

                Text('Dark Theme',style: TextStyle(
                    color: Colors.grey,fontSize: 20
                ),),
                SizedBox(height: 100,),
                InkWell(onTap: () {
                  setState(() {
                    isdark=true;
                  });
                },
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('Light Icon',style: TextStyle(letterSpacing: 1,fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(onTap: () {
                  setState(() {
                    isdark=false
                    ;
                  });
                },
                  child: Container(
                    alignment: Alignment.center,
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('Dark Icon',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool isdark=true;
