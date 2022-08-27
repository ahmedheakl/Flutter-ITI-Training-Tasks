class Student {
  String studentName = "";
  int studentID = 0;
  String studentPhone = "";

  Student(this.studentName, this.studentID, this.studentPhone);
}

void main() {
  // Initialize an instance
  Student stud = Student("Ahmed", 120130, "0102030");
  print("""Name: ${stud.studentName}
ID: ${stud.studentID}\nPhone: ${stud.studentPhone}""");
}
