import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/models/food.dart';

class QuantitySelector extends StatelessWidget{
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  QuantitySelector({
    required this.quantity,
    required this.food,
    required this.onDecrement,
    required this.onIncrement
  });
  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
      
            //decrease
            GestureDetector(
              onTap: onDecrement,
              child: Icon(
                Icons.remove,
                size: 20,
                color:Theme.of(context).colorScheme.inversePrimary,
                ),
            ),
      
            //quantity count
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: SizedBox(
                width: 20,
                child: Center(
                  child: Text(quantity.toString()),
                ),
              ),
              ),
      
            //increment
              GestureDetector(
              onTap: onIncrement,
              child: Icon(
                Icons.add,
                size: 20,
                color:Theme.of(context).colorScheme.inversePrimary,
                ),
            ),
      
        ],),
      ),
    );
  }


}