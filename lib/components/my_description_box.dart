import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  
  
  Widget build(BuildContext context) {
    var myPrimaryTextstyle = TextStyle(
    color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextstyle = TextStyle(
    color: Theme.of(context).colorScheme.primary);
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Theme.of(context).colorScheme.inversePrimary)
        ),
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.only(left:25,right: 25,bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //delivery fee
            Column(
              children: [
                Text("Rs. 100",style: mySecondaryTextstyle,),
                Text("Delivery fee",style: TextStyle(fontSize: 15,))
              ],
            ),

            //delivery time
            Column(
              children: [
                Text("15-30 mins",style: mySecondaryTextstyle,),
                Text("Delivery time",style: TextStyle(fontSize: 15,),)
              ],
            ),
          ],
        ),

    );
  }
}