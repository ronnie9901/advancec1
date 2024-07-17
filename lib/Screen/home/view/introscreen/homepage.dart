import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
              SystemNavigator.pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          toolbarHeight: 70,
          backgroundColor: Colors.blue,
          title: const Text(
            'HomePage',
            style: TextStyle( color: Colors.white),
          ),
        ),
        body: Center(
          child: Text(
            'HomePage',
            style: TextStyle(

                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}