import 'package:flutter/material.dart';
import 'package:project/models/restaurant.dart';

import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25,right:25,top:50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank you for your order"),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Consumer<Restaurant>(
                builder:(
                  context,restaurant,child)=>Text(restaurant.displayCardReceipt()),
              ),
              
            ),
            SizedBox(height: 25,),
            Text("Estimated delivaery time is 4.10 pm: ")
          ],
        ),
      ),
    );
  }
}