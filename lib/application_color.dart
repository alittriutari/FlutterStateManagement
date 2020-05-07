import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppicationColor with ChangeNotifier{
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;
  set isLightBlue(bool value){
    _isLightBlue = value;
    notifyListeners(); //memberitahu widget2 yg menunggu consumer
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}