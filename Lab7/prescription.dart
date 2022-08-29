//presents data
class Prescription {
  String prescriptionText = "";
  String medicinAnswer = "";

  Prescription(this.prescriptionText, this.medicinAnswer);
}

List<Prescription> prescriptionList = [
  Prescription('فلة النوم', 'الق الموبايل واترح قليلا'),
  Prescription("فقدان الذاكرة", "لا تاكل فى اوانى فضية"),
  Prescription("زيادة الاملاح", "لاتاكل كثيرا من المانجو"),
  Prescription("ضعف النظر ", "كل كثيرا جزر")
];
