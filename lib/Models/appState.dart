import 'package:flutter/material.dart';

class AppState extends ChangeNotifier{
  AppState();
  String _username ="";
  String get username => _username;
  void setUsername(String value) {
    _username = value;
    notifyListeners();
    print("Notified");
  }

  List<String> _items = [];

  List<String> get items => _items;

  void addItem(String value) {
    _items.add(value);
    notifyListeners();
  }

  void removeItem(String value){
    _items.remove(value);
    notifyListeners();
  }
}