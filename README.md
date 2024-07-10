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
<h1> Stepper Demo  </h1>
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/839b7460-7538-4f8c-90f8-0caec3c766c4"  />
  <img  height= "550" src="https://github.com/ronnie9901/advancec1/assets/148763509/2bcee58f-3459-40d2-b5a5-8e8f83694857"  />

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
