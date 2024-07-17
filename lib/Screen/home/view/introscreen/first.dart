
import 'package:advancec1/Screen/home/provider/introprovider.dart';
import 'package:advancec1/Screen/home/view/introscreen/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {

    PageController controller = PageController();
    introprovider introtrue=Provider.of<introprovider>(context ,listen:true);
    introprovider introfalse=Provider.of<introprovider>(context ,listen:false);


    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children:[

          PageView(
           controller: controller,
            onPageChanged: (index) {
              introfalse.pageIndex(index);
            },

      children: [
        buildColumn(name: 'Comminity', title: 'get to know your coworker', img: 'assets/3.jpg'),
        buildColumn(name: 'Stay in Touch', title: 'Reach out anyone at anytime', img: 'assets/2.jpg'),
        buildColumn(name: 'Personal Desk Space', title: 'We Dont believe cubicle', img: 'assets/1.jpg'),
      ]
        ),

       
          (introtrue.currentpage == 2)? Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.grey),
                      )),
                  SizedBox(
                    width: 80,
                    child: FloatingActionButton(

                      backgroundColor: Colors.teal,
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                        introfalse.removeScreen();
                      },
                      child:Text('start',style: TextStyle(color: Colors.white),)
                    ),
                  ),
                ],
              ),
            ),
          ):Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.grey),
                      )),
                  FloatingActionButton(
                    backgroundColor: Colors.teal,
                    onPressed: () {

                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    child: Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )

    ],
      ),
    );
  }

  Column buildColumn({required  String name, required String title,required String img}) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(color: CupertinoColors.black,image: DecorationImage(fit:BoxFit.cover,image: AssetImage(img))),

          ),
          SizedBox(
            height: 20,
          ),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: CupertinoColors.black),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black54, fontSize: 16, letterSpacing: 1),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 100),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(margin: EdgeInsets.all(10),height: 10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),),
                    Container(margin: EdgeInsets.all(10),height: 10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey),),
                    Container(margin: EdgeInsets.all(10),height: 10,width: 10,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey),)
                  ],
                ),
              ],
            ),
          ),
        

        ],
      );
  }
}

List introList = [
  {
    'name': 'Comminity',
    'title': 'get to know your coworker',
    'img': 'assets/3.jpg'
  },
  {
    'name': 'Stay in Touch',
    'title': 'Reach out anyone at anytime',
    'img': 'assets/2.jpg'
  },
  {
    'name': 'Personal Desk Space',
    'title': 'We Dont believe cubicle',
    'img': 'assets/1.jpg'
  }
];

