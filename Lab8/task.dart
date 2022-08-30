class Task {
  String name = "";
  bool checked = false;
  Task(this.name);
  void toggleCheck() {
    if (checked) {
      checked = false;
    } else {
      checked = true;
    }
  }
}
