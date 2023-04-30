class Resit<I,S,Q,P,O>{
  I item;
  S size;
  Q quantity;
  P price;
  
  
  Resit(this.item,this.size,this.quantity,this.price){
    print('$item          $size            $quantity            $price'); // better to use Stringvariable.padLeft(10); method
                                                                          // See below example
  }
  
}

 class Kira{
   
   double subt = 0.0;
   
  
    subtotal(Resit resit){
    subt = resit.quantity*resit.price;
    return subt;
  }
  
}
void main(){
  print('''                 Kedai Kopi Ah Seng
                 Jalan Ungku Aminah
                 82000 Johor Bahru'''
  );
  print('____________________________________________________');
  print('               ${DateTime.now()}\n');
  var kira = Kira();
  print('Item              Size       Quantity        Price');
  print('----              ----       --------        -----');
  var order1 = Resit('Cortado  ',6,1,12.50);
  var order2 = Resit('Americano',8,2,8.90);
  var order3 = Resit('Latte   ',12,3,11.00);
  
  var a = kira.subtotal(order1);
  var b = kira.subtotal(order2);
  var c = kira.subtotal(order3);
  print('\n\n                              Total          ${a + b + c}');
  print('\n\n\n            Terima Kasih & Enjoy your coffee!');
  
}

// void main() {
  
//   var x = 'Item',y='Price',z='Total';
  
//   print('${x.padLeft(5)} ${y.padLeft(10)} ${z.padLeft(15)}');
// }
