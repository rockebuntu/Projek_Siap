class Shop{
  String items = 'Items';
  int quant = 0;
  double price = 0.0;
  
  Shop(this.items,this.quant,this.price);
  
}
class Cashier{
  
  var subtotal = 0.0;
  double counting(Shop shop){ // (Shop shop) dibuat cuma utk mengakses data dlm class Shop
    subtotal = shop.quant*shop.price;
    return subtotal;
  }
}

void main(){
  var cashier = Cashier();
  var shop1 = Shop('Bread',3,4.55);
  var shop2 = Shop('Chesse',5,1.70);
  
  var a = cashier.counting(shop1); // di sini kita mmbuat satu variable baru utk menyimpan data
  var b = cashier.counting(shop2); // dlm method di class Cashier utk proses jumlah subtotalnya   
  
  // kemudian kita boleh print keseluruhan totalnya dgn mencampurkan data yg disimpan di variable 
  // baru tersebut
  
  print('Total need to pay for all items are : \$${a+b}');
  
}
// Total need to pay for all items are : $ 22.15) 
