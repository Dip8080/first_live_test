


List<Map<String , dynamic >> fruits = [

  {
    "name" : 'Apple' ,
    "color" : 'red' ,
    "price" : 2.5
  },
  {
    "name" : 'Banana' ,
    "color" : 'Yellow' ,
    "price" : 1.0
  },
  {
    "name" : 'Grapes' ,
    "color" : 'Purple',
    'price' : 3.0
  }
];

void displayFruitDetails (List fruits) {
  print('Original Fruit Details before Discount :');
  for(var fruit in fruits) {
    print('Name : ${fruit['name']} , Color : ${fruit['color']} , Price : \$${fruit['price']}');
  }
}
void applyPriceDiscount (List<Map <String , dynamic>> fruits , double discount) {
  print('Fruit Details After Applying 10% Discount:');
  for(var fruit in fruits) {
    double price = fruit['price'];
    double discountedPrice = price- (price * discount /100) ;
    fruit['price'] = discountedPrice ;
    print('Name : ${fruit['name']} , Color : ${fruit['color']} , Price : \$${fruit['price']}');
  }
}
void main () {
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits, 10.00);
}

