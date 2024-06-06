import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/components/my_quantity_selector.dart';
import 'package:project/models/cart_item.dart';
import 'package:project/models/restaurant.dart';

import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key,required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder:(context,restaurant,child)=>Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(10)
        ),
        margin: EdgeInsets.symmetric(horizontal: 15,vertical:10 ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    width: 100,)),
                   
            
                //name and price
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItem.food.name,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:  Theme.of(context).colorScheme.inversePrimary,
                    ),),
            
                    //price
                    Text('Rs. '+cartItem.food.price.toString())
            
                  ],
                ),
                Spacer(),
                //incremt and decremant the quantity
               
                QuantitySelector(
                  quantity: cartItem.quantity, 
                  food: cartItem.food,
                   onDecrement: (){
                    restaurant.removeFromCart(cartItem);
                   }, 
                   onIncrement: (){
                   restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                   }
                   )
              ],
            ),
          ),
          //addons

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0:60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: 
                cartItem.selectedAddons.map((addon)=>Padding(
                  padding: const EdgeInsets.only(right:8),
                  child: FilterChip(
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                              
                        //addon name
                        Text(addon.name),
                        SizedBox(width: 5,),
                              
                              
                        //addon price
                        Text(addon.price.toString())
                              
                      ],
                    ),
                     onSelected: (value){
                              
                     }),
                )).toList(),
            
              ),
              ),
          )
        ],
      )
      ,)
       );
  }
}