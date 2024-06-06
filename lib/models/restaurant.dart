import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/models/cart_item.dart';
import 'package:project/models/food.dart';


class Restaurant extends ChangeNotifier{
  final List<Food>_menu=[
    //burgers
    Food(
      name: "Classic Cheese Burger",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/cheese_burger.jpeg",
        price: 150.0,
         category: FoodCategory.Burgers,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "Tasty veg burger",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/veg_burger.jpeg",
        price: 150.0,
         category: FoodCategory.Burgers,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A juicy bbq burger",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/cheese_burger.jpeg",
        price: 150.0,
         category: FoodCategory.Burgers,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A juicy alpha burger",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/alpha_burger.jpeg",
        price: 150.0,
         category: FoodCategory.Burgers,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A juicy chicken burger",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/chicken_burger.jpeg",
        price: 150.0,
         category: FoodCategory.Burgers,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),



    //salads
Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/salad1.jpeg",
        price: 150.0,
         category: FoodCategory.Salads,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/salad2.jpeg",
        price: 150.0,
         category: FoodCategory.Salads,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),
      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/salad3.jpeg",
        price: 150.0,
         category: FoodCategory.Salads,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),
      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/salad4.jpeg",
        price: 150.0,
         category: FoodCategory.Salads,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

    //sides

    Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/side1.jpeg",
        price: 150.0,
         category: FoodCategory.Sides,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/side2.jpeg",
        price: 150.0,
         category: FoodCategory.Sides,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/side3.jpeg",
        price: 150.0,
         category: FoodCategory.Sides,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

    //desserts

    Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/dessert1.jpeg",
        price: 150.0,
         category: FoodCategory.Deserts,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/dessert2.jpeg",
        price: 150.0,
         category: FoodCategory.Deserts,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/dessert3.jpeg",
        price: 150.0,
         category: FoodCategory.Deserts,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),


      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/dessert4.jpeg",
        price: 150.0,
         category: FoodCategory.Deserts,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/desert5.jpeg",
        price: 150.0,
         category: FoodCategory.Deserts,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),



    //drinks
    Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/drink1.jpeg",
        price: 150.0,
         category: FoodCategory.Drinks,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/drink2.jpeg",
        price: 150.0,
         category: FoodCategory.Drinks,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/drink3.jpeg",
        price: 150.0,
         category: FoodCategory.Drinks,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/drink4.jpeg",
        price: 150.0,
         category: FoodCategory.Drinks,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      Food(
      name: "A delicious Salad with loads of veggies and sauces",
       description: "A Juicy veg patty with melted cheddar", 
       imagePath: "assets/images/drink5.jpeg",
        price: 150.0,
         category: FoodCategory.Drinks,
          availableAddOns: [
         AddOn(name: "Extra Cheese",price:50),
         AddOn(name: "Extra veggies",price:50),
         AddOn(name: "Extra paty",price:100),
         AddOn(name: "Extra dip",price:50),

             
      ],),

      

 ];




//user cart
final List<CartItem>_cart=[];

//delivery address

String _deliveryAddress = '99 Hollywood Blv';
// getters
List<Food> get menu =>_menu;

List<CartItem>get cart=>_cart;

String get deliveryAddress =>_deliveryAddress;
//operations



//add to cart
void addToCart(Food food, List<AddOn>selectedAddons)
{
  //see if there is a cart item already with the same food and selected addon
    //firstWhereOrNull is gotten from flutter pub add collection
    CartItem? cartItem = _cart.firstWhereOrNull((item){
      //check if the food items are same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
    bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);
    
    return isSameFood && isSameAddons ;
    });
    //if item already exists increase the quantity
    if(cartItem !=null){
      cartItem.quantity++;
    }
    //otherwise add a new item to the cart
    else{
      _cart.add(
        CartItem(
          food: food,
           selectedAddons: selectedAddons
           ));
    }
    notifyListeners();
}
//remove from cart
void removeFromCart(CartItem cartItem){
  int cartIndex = _cart.indexOf(cartItem);

  if(cartIndex != -1){
    if(_cart[cartIndex].quantity>1){
      _cart[cartIndex].quantity--;
    }
    else{
      _cart.remove(cartIndex);
    }
  }
  notifyListeners();
}
//get total price of cart
double getTotalPrice(){
  double total=0.0;
  for(CartItem cartItem in _cart){
    double itemTotal = cartItem.food.price;

    for(AddOn addon in cartItem.selectedAddons){
      itemTotal += addon.price;
    }
    total+=itemTotal * cartItem.quantity;
  }
  return total;
}

//get total number of items in cart
int getTotalItemCount(){
  int totalItemCount=0;
  for(CartItem cartItem in _cart){
    totalItemCount+=cartItem.quantity;
  }
  return totalItemCount;
}
//clear cart
void clearCart(){
  _cart.clear();
  notifyListeners();
}


//update delivery address

void updateDeliveryAddress(String newAddress){
  _deliveryAddress = newAddress;
  notifyListeners();
}
//helpers

//generate receipt
String displayCardReceipt(){
  final receipt = StringBuffer();
  receipt.writeln("Here's you receipt.");
  receipt.writeln();

  //format the date to include up to seconds only
  String formattedDate =
  DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()); //for DateFormat we include intl flutter pub add intl
  
  receipt.writeln(formattedDate);
  receipt.writeln();
  receipt.writeln("---------------");
  for (final cartItem in _cart){
    receipt.writeln("${cartItem.quantity} X ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
    if(cartItem.selectedAddons.isNotEmpty)
    {
      receipt.writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
    }
    receipt.writeln();
  }
  receipt.writeln("---------------");
  receipt.writeln();
  receipt.writeln("Total Items: ${getTotalItemCount()}");
  receipt.writeln("Total Price:  ${_formatPrice(getTotalPrice())}");
  
receipt.writeln();
receipt.writeln("Delivering to: $deliveryAddress");
  return receipt.toString();
}



//format double value into none
String _formatPrice(double price){
  return "Rs.${price.toStringAsFixed(2)}";
}
//format list of addons into a string summary
String _formatAddons(List<AddOn>addons){
  return addons.map((addon)=>"${addon.name} {${_formatPrice(addon.price)}}").join(", ");
}
}