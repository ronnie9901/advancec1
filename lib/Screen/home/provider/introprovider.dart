import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class introprovider extends ChangeNotifier{
  late SharedPreferences sharedPreferences1;
  bool intro=false;
  int currentpage=0;


  void pageIndex(int index){
    currentpage = index;
    notifyListeners();
  }

  Future<void> settheme(bool value)
  async {
    sharedPreferences1 =await SharedPreferences.getInstance();
    sharedPreferences1.setBool('intro',value);
  }


  Future<void> gettheme()
  async {
    sharedPreferences1 =await SharedPreferences.getInstance();
    intro = sharedPreferences1.getBool('intro')??false;
    notifyListeners();
  }


  void removeScreen(){
    intro = true;
    settheme(intro);
    notifyListeners();
  }
  introprovider(){

    gettheme();
    notifyListeners();
  }

}