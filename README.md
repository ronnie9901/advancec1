# advancec1

A new Flutter project.



theme: ThemeData.light(),
darkTheme: ThemeData.dark(),
themeMode: isDark ? ThemeMode.dark : ThemeMode.light,




<div>
<h1> Switch Dark Theme to Light Theme  </h1>
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/782059a3-c19e-4ff9-af73-2869e857dca0"  />
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/a5612f6d-a5ec-4e0c-8a22-f20ada9094b9"  />

https://github.com/ronnie9901/advancec1/assets/148763509/0deaf24d-a3c0-44af-b4c5-f205c120d042

  </div>

  <div>
    Key Components of a Stepper
Stepper Widget: The main widget that contains all the steps.
Step: Represents a single step in the stepper, which includes a title, content, and state.
StepState: Defines the state of a step, such as indexed, editing, or complete.
Attributes of Stepper
currentStep: An integer that represents the index of the currently active step.
onStepContinue: A callback function that is triggered when the "continue" button is pressed.
onStepCancel: A callback function that is triggered when the "cancel" button is pressed.
steps: A list of Step objects that define the steps in the stepper.
type: Defines the type of stepper. It can be either StepperType.vertical or StepperType.horizontal.
Attributes of Step
    
title: The title of the step.
content: The content of the step, typically a form or text.
isActive: A boolean that indicates whether the step is currently active.
<h1> Stepper Demo  </h1>
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/839b7460-7538-4f8c-90f8-0caec3c766c4"  />
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/2bcee58f-3459-40d2-b5a5-8e8f83694857"  />

  </div>

   
  <div>
<h1>1.4 Provider & Change Theme using Provider </h1>
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/046787a9-a957-4d1b-bbe6-22c39ae59c9a"  />
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/21c2896c-fde0-4eb0-a7f3-adec925b80c4"  />


https://github.com/ronnie9901/advancec1/assets/148763509/97807189-8b56-4968-8962-f74a4cd66836


  </div>

<div>
  <h1>1.5 Quotes Data Solving with Provider </h1>
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/9eb43c34-ba96-4e24-a7f7-6d0a9a1f06ab"  />
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/bc89b621-b56f-4c21-86a1-e5d3481f5860"  />

https://github.com/ronnie9901/advancec1/assets/148763509/4c186988-7344-439f-bddc-976ce627708a
  </div>


  <div>
  <h1>1.5 Quotes Data Solving with Provider </h1>
  <img  height= "550" src="https://github.com/user-attachments/assets/fd0c8659-3681-4e9f-af9a-35b65d3bb0e4"  />
  <img  height= "550" src="https://github.com/user-attachments/assets/feccfe7b-53f5-4735-a056-3af5f1b42641"  />
  <img  height= "550" src="https://github.com/user-attachments/assets/6fadecfa-17df-4efb-9651-b03cb2f34eaf"  />
  <img  height= "550" src="https://github.com/user-attachments/assets/5961e45f-6206-4663-aff5-3f73bdd460c7"  />


https://github.com/user-attachments/assets/eb0c05bd-4c67-4a82-b3e4-ae98243a6fd3




  </div>
![a1]()
![a2]()



  <div>
  <h1>1.6 Contact Us Page With Interaction </h1>
  <img  height= "550" src="https://github.com/user-attachments/assets/94ad14a6-3c5b-4a55-8fac-2b2d37a6476d"  />
 
   https://github.com/user-attachments/assets/b79d4c5e-a2e8-49a4-9f77-6b6ca07120ce
  </div>



   
    

    <div>
  <h1>1.6 Contact Us Page With Interaction </h1>
  <img  height= "550" src="https://github.com/user-attachments/assets/d6613505-d44d-4f72-8276-f1de67dcc436"  />
   <img  height= "550" src="https://github.com/user-attachments/assets/b79a3f28-06f1-4254-8c71-e3c57b2c2434"  />
 

https://github.com/user-attachments/assets/de69e67a-2221-424e-b390-b25e3240e288


  </div>


# 1.3 Provider Tree

## 1) What is State?

Information that can be read synchronously when the widget is built and might change during the lifetime of the widget.

## 2) What is State Management?

State management in Dart and Flutter is all about managing the data that the app will render and how it will respond to user input. It's about tracking changes to the state and updating the UI to reflect these changes.

The state management categorizes into two conceptual types, which are given below:
### (i) `Ephemeral State` :- This state is also known as UI State or local state. It is a type of state which is related to the specific widget, or you can say that it is a state that contains in a single widget. In this kind of state, you do not need to use state management techniques.

## Example
```bash
class MyHomepage extends StatefulWidget {  
  @override  
  MyHomepageState createState() => MyHomepageState();  
}  
  
class MyHomepageState extends State<MyHomepage> {  
  String _name = "Sahil";  
  
  @override  
  Widget build(BuildContext context) {  
    return RaisedButton(  
        child: Text(_name),  
        onPressed: () {  
           setState(() {  
              _name = _name == "naresh" ? "rohan" : "sumit ";  
           });  
         },  
      );  
  }  
}  
```



### (ii) `App State` :- It is a type of state that we want to share across various parts of our app and want to keep between user sessions. Thus, this type of state can be used globally.

The simplest example of app state management can be learned by using the provider package. The state management with the provider is easy to understand and requires less coding. A provider is a third-party library. Here, we need to understand three main concepts to use this library.

Package for Provider

```bash
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0  # Check for the latest version
```

-------------------------------------------------------------------------------------------------------------------------

- `ChangeNotifier` :- ChangeNotifier is a simple class, which provides change notification to its listeners. It is easy to understand, implement, and optimized for a small number of listeners. It is used for the listener to observe a model for changes. In this, we only use the notifyListener() method to inform the listeners.

## Example of ChangeNotifier

```bash
class Counter with ChangeNotifier {  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _counter--;  
    notifyListeners();  
  }  
}  
```

-------------------------------------------------------------------------------------------------------------------------

- `ChangeNotifierProvider` :- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. It comes from the provider package.

## Example of ChangeNotifierProvider

```bash
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      theme: ThemeData(  
        primarySwatch: Colors.indigo,  
      ),  
      home: ChangeNotifierProvider<CounterModel>(  
        builder: (_) => CounterModel(),  
        child: CounterView(),  
      ),  
    );  
  }  
}  
```

-------------------------------------------------------------------------------------------------------------------------

- `Consumer` :- It just calls the provider in a new widget and delegates its build implementation to the builder.

## Example of Consumer

```bash
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);  
```
