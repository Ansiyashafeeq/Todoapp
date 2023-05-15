


class Todomodel{
  String todoTitle;
  bool completed;
  Todomodel({required this.todoTitle,this.completed=false});

  void togglecompleted(){
    completed=!completed;
  }
}