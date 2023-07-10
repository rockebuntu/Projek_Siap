class Hero{
  String char = 'Color';
  double power = 0.0;
  double punches = 0;
  double kicks = 0;
  
  Hero(this.power,this.punches,this.kicks);
}
class Attack{
  double hits(Hero hero){
    return hero.power*(hero.punches+hero.kicks);
  }
  
}
void main(){
  Hero heroChar1 = Hero(10,2,3);
  Attack attack = Attack();
  heroChar1.char = 'Red';
  print(attack.hits(heroChar1));
  Hero heroChar2 = Hero(8,3,9);
  heroChar2.char = 'Blue';
  print(attack.hits(heroChar2));
  
  var a = attack.hits(heroChar1);
  var b = attack.hits(heroChar2);
  
  if(attack.hits(heroChar1)>attack.hits(heroChar2)){
    print('${heroChar1.char} WINS!');
  }else{
    print('${heroChar2.char} WINS!');
  }
  
}
// 50
// 96
// Blue WINS!
