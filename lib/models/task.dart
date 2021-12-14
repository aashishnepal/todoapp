class Task {
  String? name;
  bool isDone = false;
  Task({this.name, required this.isDone});

  void toggleDone() {
    isDone = !isDone;
  }
}
