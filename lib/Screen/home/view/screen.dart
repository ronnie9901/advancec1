import 'package:advancec1/Screen/home/provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Userprofile extends StatelessWidget {
  const Userprofile({super.key});

  @override
  Widget build(BuildContext context) {
    homeproviderr homepagevar=Provider.of<homeproviderr>(context ,listen:true);
    homeproviderr homepagemethod=Provider.of<homeproviderr>(context ,listen:false);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.back),
        actions: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.add_circled),
          )

        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
             
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images.png'
                  )
                )
              ),
            ),
          ),SizedBox(height: 20,),
          Text(' Rohan nayak',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: homepagevar.isdark?Icon(CupertinoIcons.moon,color:Theme.of(context).colorScheme.primary):Icon(CupertinoIcons.sun_max,color:Theme.of(context).colorScheme.primary),

              title: homepagevar.isdark?Text(' dark mode'):Text(' light mode'),
              trailing:   Switch(
                inactiveThumbColor: Theme.of(context).colorScheme.primary,
                activeColor: Theme.of(context).colorScheme.primary,
                value: homepagevar.isdark, onChanged:(value) {
                
                 homepagemethod.changetheme();

               },)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
                leading: Icon(CupertinoIcons.grid,color: Theme.of(context).colorScheme.onPrimary,),

                title: Text(' story',),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
                leading: Icon(CupertinoIcons.settings,color: Theme.of(context).colorScheme.onSecondary,),

                title: Text(' setting and Privacy '),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: Icon(Icons.message,color: Theme.of(context).colorScheme.secondary,),

              title: Text(' Help Center  '),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: Icon(Icons.notifications,color: Theme.of(context).colorScheme.primary,),

              title: Text(' notifications '),

            ),
          )
        ],
      ),

    );
  }
}
