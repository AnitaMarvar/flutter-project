import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:project/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap; 
  const FoodTile({super.key,required this.food,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(bottom:15,left:15,right:15),
            child: Row(
              children: [
                //text food details
            
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(food.name,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    Text('Price: '+'\$'+food.price.toString(),style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary
                    ),),
                    SizedBox(height: 10,),
                    Text(food.description,style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary
                    ),)
                    
                  ],)
                  ),
            SizedBox(width: 15,),
                  //food item
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(food.imagePath,height: 150,))
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2,
          endIndent: 25,
          indent: 25,
          
          color: Theme.of(context).colorScheme.inversePrimary,
        )
      ],
    );
  }
}