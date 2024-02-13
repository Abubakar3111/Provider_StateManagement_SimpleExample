import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

    class ScreenChange with ChangeNotifier{
int _count=0;
int get count =>_count;

void setCount1()async{
    SharedPreferences prefs =
        await SharedPreferences.getInstance();
    prefs.setInt('val', 0);
    print(prefs.getInt(
        'val'));
    _count=0;
    notifyListeners();
}
void setCount2()async{
    SharedPreferences prefs =
    await SharedPreferences.getInstance();
    prefs.setInt('val', 1);
    print(prefs.getInt(
        'val'));
    _count=1;
    notifyListeners();
}
    }