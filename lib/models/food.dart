

//food item
class Food{
  final String name;   //cheese burger
  final String description;  //a burger full of cheese
  final String imagePath;
  final double price; //100
  final FoodCategory category; //burgers
  List<AddOn> availableAddOns; //cheese,extra patty
  Food({required this.name,
  required this.description,
  required this.imagePath,
  required this.price,
  required this.category,
  required this.availableAddOns
  });
}

enum FoodCategory{
  Burgers,
  Salads,
  Sides,
  Deserts,
  Drinks
}

//addons for each food item
class AddOn{
  String name;
  double price;
  AddOn({
    required this.name,
    required this.price,
  });
}