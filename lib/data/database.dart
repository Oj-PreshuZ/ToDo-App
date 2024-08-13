import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference the box
  final _box = Hive.box('todo_box');

  // run method when creating new data
  void createInitialData() {
    toDoList = [
      ['Do Laundry', false],
      ['Make Stew with fish', false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _box.get('TODOLIST');
  }

  // update the database
  void updateDataBase() {
    _box.put('TODOLIST', toDoList);
  }
}
