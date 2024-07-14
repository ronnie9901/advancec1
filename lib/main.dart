import 'package:advancec1/Screen/home/provider/introprovider.dart';
import 'package:advancec1/Screen/home/provider/provider.dart';
import 'package:advancec1/Screen/home/view/introscreen/first.dart';
import 'package:advancec1/Screen/home/view/quote.dart';
import 'package:advancec1/Screen/home/view/screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool theme=false;
Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // bool theme = sharedPreferences.getBool('theme')??false;

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
        create: (BuildContext context) => introprovider(),
        builder: (context, child) =>   MaterialApp(
        // theme: ThemeData(
        //     brightness: Brightness.light,
        //   colorScheme: ColorScheme.light(
        //     primary: Colors.amber,
        //     onPrimary: Colors.pink,
        //     secondary: Colors.blue,
        //     onSecondary: Colors.green,
        //   )
        // ),
        // darkTheme:  ThemeData(
        //   brightness: Brightness.dark,
        //     colorScheme: ColorScheme.dark(
        //       primary: Colors.purple,
        //       onPrimary: Colors.blue,
        //       secondary: Colors.green,
        //       onSecondary: Colors.redAccent,
        //
        //     )
        // ),
        // themeMode: Provider.of <homeproviderr>(context).isdark?ThemeMode.dark:ThemeMode.light,

        debugShowCheckedModeBanner: false,

      home: firstpage(),

    ));
  }
}

bool isdark=true;
