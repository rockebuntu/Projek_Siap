class Robot{
  int punch = 0;
  int kick = 0;
  Robot(this.punch,this.kick);
}
class Total{
  int collect(Robot robot){
   return robot.punch+robot.kick; 
  }

}
void main(){
  Robot robot1 = Robot(3,5);
  Total total1 = Total();
  print('Robot 1 collects ${total1.collect(robot1)} points');
  Robot robot2 = Robot(5,5);
  Total total2 = Total();
  print('Robot 2 collects ${total2.collect(robot2)} points');
  
  var a = total1.collect(robot1);
  var b = total2.collect(robot2);
  
  if(a>b){
    print('Robot 1 WINS!');
  }else{
    print('Robot 2  WINS!');
  }
  
}

// Penjelasan: Amalan eletakkan void pada method di class sangat sukar utk
// membantutkan penulisan kod kerana terdapat banyak error akan dijumpai
// Seharusnya apabila ingin membuat sesebuah method Biasakan dgn penggunaan
// method yg mempunyai 'return' value.
