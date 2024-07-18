
import 'package:advancec1/utils/authiglobal.dart';
import 'package:flutter/material.dart';



class Hidescreen extends StatelessWidget {
  const Hidescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hide Screen'),
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: hideimg.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,crossAxisSpacing: 8,),
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 110,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(hideimg[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
