import 'package:advancec1/Screen/home/provider/providerlauncher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class launcher extends StatelessWidget {
  const launcher({super.key});
  

  @override
  Widget build(BuildContext context) {
    launcherprovider launcherfalse=Provider.of<launcherprovider>(context ,listen:false);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.back,size: 20,),
        title: Text('Contact Us',style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text('if you have any queries,get in touch with '),
            Text('us.We will be happy to help you!'),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 1),borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                Icon(Icons.mobile_screen_share_sharp,color: Colors.blueAccent,),
                InkWell(onTap: () {
                  launcherfalse.launchertel();
                },child: Text('+91 1234567890'))
              ],),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1),borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                Icon(Icons.mail,color: Colors.blueAccent,),
                InkWell(onTap: () {
                  launcherfalse.launchermail();
                },child: Text('nayakrohan@gamail.com'))
              ],),
            ),
        Container(
          margin: EdgeInsets.all(10),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1),borderRadius: BorderRadius.circular(5)
          ),child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Social media ',style: TextStyle(color: Colors.blueAccent,fontSize: 23,fontWeight: FontWeight.bold),),
            ),
            Divider(height: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(onTap: () {
                launcherfalse.linkLauncher();
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        'assets/be.png',fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 33,),
                    Text(
                      'haikuzen_designs',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),

            ),
            Divider(height: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(onTap: () {

                launcherfalse.teleLauncher();
              },
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                          'assets/telegr.png'),
                    ),
                    SizedBox(width: 33,),
                    Text(
                      'Haikuzen',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Divider(height: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(onTap: () {
                launcherfalse.instLauncher();
              },
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                          'assets/insta.jpeg'),
                    ),
                    SizedBox(width: 33,),
                    Text(
                      'Haikuzen',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          ],
                  ),)
          ],
        ),
      ),
    );
  }
}
