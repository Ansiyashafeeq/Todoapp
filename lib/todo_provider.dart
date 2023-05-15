import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoapp/model/todo_model.dart';
class Todoprovider with ChangeNotifier{
  List<Todomodel> task=[];
  UnmodifiableListView <Todomodel>get allTasks => UnmodifiableListView(task);

  void addTask(String tasks) {
    task.add(Todomodel(todoTitle: tasks,completed: false));
    notifyListeners();
  }
  void toggleTask(Todomodel tasks) {
    final taskIndex = task.indexOf(tasks);
    task[taskIndex].togglecompleted();
    notifyListeners();
  }

  void deleteTask(Todomodel tasks) {
    task.remove(tasks);
    notifyListeners();
  }
}