import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  const secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: CupertinoColors.black,
              image: DecorationImage(
                image: AssetImage('assets/2.jpg')
              )
            ),
          ),
          SizedBox(height: 20,),
          Text('Stay in Touch',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30,color: CupertinoColors.black),),
          Text('Reach out anyone at anytime',style: TextStyle(color: Colors.black54,fontSize: 16,letterSpacing: 1),),
          Padding(
            padding: const EdgeInsets.only(left: 120,top: 60),
            child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    height: 10,
                    width: 15,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        shape: BoxShape.circle
                    ),
                  ),
                ),

              ],),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: () {

          }, child: Text('Skip',style: TextStyle(color: Colors.grey),)),
          FloatingActionButton(backgroundColor:Colors.teal,onPressed: () {

          },child: Icon(CupertinoIcons.right_chevron,color: Colors.white,),)
        ],
      ),
    );
  }
}
