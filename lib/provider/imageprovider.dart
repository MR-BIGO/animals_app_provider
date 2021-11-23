import 'package:flutter/material.dart';

class ImgProvider with ChangeNotifier{
  bool _showDog = false;
  bool _showCat = false;
  bool _showKoala = false;
  bool _showLion = false;

  bool get showDog => _showDog;
  bool get showCat => _showCat;
  bool get showKoala => _showKoala;
  bool get showLion => _showLion;



  void dog(){
    _showDog = !_showDog;
    _showCat = false;
    _showKoala = false;
    _showLion = false;
    notifyListeners();
  }

  void cat(){
    _showDog = false;
    _showCat = !_showCat;
    _showKoala = false;
    _showLion = false;
    notifyListeners();
  }

  void koala(){
    _showDog = false;
    _showCat = false;
    _showKoala = !_showKoala;
    _showLion = false;
    notifyListeners();
  }

  void lion(){
    _showDog = false;
    _showCat = false;
    _showKoala = false;
    _showLion = !_showLion;
    notifyListeners();
  }  
}