abstract class Role {
  void displayRole();
}

class Person implements Role {
  int age = 0;
  String name = "";
  String address = "";

  Person(int age, String name, String address) {
    this.age = age;
    this.name = name;
    this.address = address;
  }

  @override
  void displayRole() {}
}

class Student extends Person {
  int studentID = 0;
  double grade = 0;
  @override
  void displayRole() {
    print("Role : Student");
  }

  List<double> courseScore = [90.0,89.0,88.0];

  Student(super.age, super.name, super.address, this.studentID, this.grade);
displyStudentInfo(){
  print("Name : $name");
  print("Age : $age");
  print("Address : $address");

}
   average(){
    double avg=0.0;
    double sum=0.0;
    for(int i=0;i<courseScore.length;i++){
      sum=sum+courseScore[i];


    }
    avg=sum/courseScore.length;
    print("Average Score : $avg");
  }

}

class Teacher extends Person {
  int teacherID = 0;
  @override
  void displayRole() {
    print("Role : teacher");
  }

  List<String> coursesTaught = ["Math", "English", "Bangla"];

  Teacher(super.age, super.name, super.address, this.teacherID);

  displayTeacherInfo(){
    print("Name : $name");
    print("Age $age");
    print("Address : $address");
    print("Course Taught : $coursesTaught");
  }
}

void main() {
  Student obj = Student(20, "John Doe", "123 Main St", 100, 3.45);
  obj.displayRole();
  obj.displyStudentInfo();
  obj.average();



  Teacher obj1 = Teacher(
    50,
    "Mrs Smith",
    "456 Oak St",
    1001,
  );
  obj1.displayRole();
  obj1.displayTeacherInfo();

}
