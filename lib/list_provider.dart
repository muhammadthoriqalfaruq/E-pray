import 'package:flutter/material.dart';
import '../model/model_list.dart';

class ListProvider with ChangeNotifier {
  List<ListModel> _list = [];
  List<ListModel> get list => _list;

  void addList(ListModel a) {
    _list.add(a);
    notifyListeners();
  }
  void removeList(ListModel a) {
    _list = _list.where((item) => item.id != a.id).toList();
    notifyListeners();
  }

  void updateList(ListModel a) {
    _list[_list.indexWhere((item) => item.id == a.id)] = a;
    notifyListeners();
  }
}

