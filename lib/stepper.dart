import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class steppervartical extends StatefulWidget {
  const steppervartical({super.key});

  @override
  State<steppervartical> createState() => _steppervarticalState();
}

class _steppervarticalState extends State<steppervartical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter Stepper Demo',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
        Theme(
        data: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade700,

        )
        ),
              child: Stepper(
                connectorColor: MaterialStateProperty.all(CupertinoColors.activeBlue) ,
                  onStepContinue: () {
                    setState(() {
                      if (step <= 1) {
                        step++;
                      }
                    });
                  },
                  currentStep: step,
                  onStepCancel: () {
                    setState(() {
                      if (step > 0) {
                        step--;
                      }
                    });
                  },
                  onStepTapped: (int index) {
                    setState(() {
                      step = index;
                    });
                  },
                  steps: <Step>[
                    Step(
                        title: Text('Account '),
                        content: TextField(
                          decoration: InputDecoration(label: Text('account'),
                              enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 2),
                        ),),
                        ),
                        isActive: step==0,
                        state: step == 0 ? StepState.editing : StepState.complete),
                    Step(
                        title: Text('Adress '),
                        content: TextField(
                          decoration: InputDecoration(label: Text('Adress',style: TextStyle(color: Colors.black),),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey,width: 2),
                            ),
                          ),
                        ),
                        isActive: step==1,
                        state: step == 1 ? StepState.editing : StepState.complete),
                    Step(
                        title: Text('Mobile No '),
                        content: TextField(
                          decoration: InputDecoration(
                            label: Text(' Mobile no',),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey,width: 2),
                            ),
                          ),
                        ),
                        isActive: step==2,
                        state: step == 2 ? StepState.editing : StepState.complete),
                  ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent.shade700,
        onPressed: () {
         Navigator.of(context).pushNamed('/ho');
        },
        child: Icon(Icons.menu),
      ),
    );
  }
}

var step = 0;
