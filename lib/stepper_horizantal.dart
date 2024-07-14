import 'package:advancec1/stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stepperhorizontal extends StatefulWidget {
  const stepperhorizontal({super.key});

  @override
  State<stepperhorizontal> createState() => _stepperhorizontalState();
}

class _stepperhorizontalState extends State<stepperhorizontal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Theme(
        data: ThemeData(
            colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent.shade700,
        )),
        child: Stepper(
            type: StepperType.horizontal,
            connectorColor:
                MaterialStateProperty.all(CupertinoColors.activeBlue),
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
                  title: Text(
                    'Email ',
                    style: TextStyle(fontSize: 10),
                  ),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(

                              decoration: InputDecoration(
                                  label: Text('First name'),
                                  prefixIcon: Icon(CupertinoIcons.add),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                                ),


                              ),


                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(

                            decoration: InputDecoration(
                                label: Text(' last  name'), prefixIcon: Icon(Icons.call),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 2),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  isActive: step == 0,
                  state: step == 0 ? StepState.editing : StepState.complete),
              Step(
                  title: Text(
                    'Contact ',
                    style: TextStyle(fontSize: 10),
                  ),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                              decoration: InputDecoration(
                                  label: Text('Adress'),
                                  prefixIcon: Icon(CupertinoIcons.add), enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey,width: 2),
                              ),


                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(

                            decoration: InputDecoration(
                                label: Text('Address'), prefixIcon: Icon(Icons.call),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey,width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(

                                label: Text('Mobile No'), prefixIcon: Icon(Icons.call),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey,width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  isActive: step == 1,
                  state: step == 1 ? StepState.editing : StepState.complete),
              Step(
                  title: Text(
                    'Upload',
                    style: TextStyle(fontSize: 10),
                  ),
                  content:Text(' succefully'),
                  isActive: step == 2,
                  state: step == 2 ? StepState.editing : StepState.complete),
            ]),
      ),
    );
  }
}
