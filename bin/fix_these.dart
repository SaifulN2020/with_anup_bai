void main(){

  average();
  /*
    studentID, grade, teacherID String type hisabe nite bolse support class a.
    courseScore & couresTought(banan bhul) ai duita main function theke set korte hobe, 
    class a default hisabe deya jabe na, karon different object ar different List value thakbe.
    Student class a avarage score ber korar janno akta  function likte hobe.
  */
}
average(){
  List<double> cc=[10.0,20.0,30.0];
  double avg=0.0;
  double sum=0.0;
  for(int i=0;i<cc.length;i++){
    sum=sum+cc[i];
  }

avg=sum/cc.length;
  print(avg);
}
