abstract class Role{
  void displayRole();
}
class Person implements Role{
  int age=0;
  String name="";
  String address="";


  Person(int age,String name,String address){
    this.age=age;
    this.name=name;
    this.address=address;

  }

  @override
  void displayRole() {

  }

}
class Student extends Person{
  int studentID=0;
  double grade=0;
  @override
  void displayRole(){
    print("Role : Student");
  }
  List<double> courseScore=[50.00,80.50,70];

  Student(super.age, super.name, super.address,this.studentID,this.grade);

}


class Teacher extends Person{
  int teacherID=0;
  @override
  void displayRole(){
    print("Role : teacher");
  }
  List<String>couresTought=["Math","English","bangla"];


  Teacher(super.age, super.name, super.address,this.teacherID);




}
void main(){
  Student obj=Student(20, "John Doe", "123 Main st", 100, 3.45);
  obj.displayRole();
  print("Name : ${obj.name}");
  print("Age : ${obj.age}");
  print("Address : ${obj.address}");
  print(obj.grade);
  Teacher obj1=Teacher(50, "Mrs Smith", "456 Oak St",1001, );
  obj1.displayRole();
  print("Name : ${obj1.name}");
  print("Age : ${obj1.age}");
  print("Address : ${obj1.address}");
  //hfjbgjdfgkjdf
  //hskdfhksdj



}

