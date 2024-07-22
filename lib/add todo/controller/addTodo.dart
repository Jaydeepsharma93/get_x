import 'package:get/get.dart';
import 'package:get_x/add%20todo/model/modeltodo.dart';

class AddTodo extends GetxController {
  var todoList = <Todo>[].obs;

  void addTodo(String task) {
    todoList.add(Todo(task: task));
  }

  void updateTodo(int index, String task) {
    todoList[index].task = task;
    todoList.refresh();
  }

  void deleteTodo(int index) {
    todoList.removeAt(index);
  }

  void thanTodoDone(value, index) {
    todoList[index].isDone = value;
    todoList.refresh();
  }
}
