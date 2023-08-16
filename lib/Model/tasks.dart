class Task {
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}
