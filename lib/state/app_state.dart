import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier{

  bool _isBusy;
  bool get isBusy => _isBusy;

  set loading(bool value){
    _isBusy = value;
    notifyListeners();
  }
}