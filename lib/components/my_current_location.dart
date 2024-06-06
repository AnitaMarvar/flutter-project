import 'package:flutter/material.dart';

import 'package:project/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
   MyCurrentLocation({super.key});
  TextEditingController textController = TextEditingController();
  void openLocationSearchBox(BuildContext context){
   showDialog(
    context: context,
     builder: (context)=>AlertDialog(
      title: Text("Your Location"),
      content: TextField(
        controller: textController,
        decoration: InputDecoration(
          hintText: "Enter address..."
        ),
      ),
actions: [
  //cancel
  MaterialButton(
    onPressed: (){
      Navigator.pop(context);
    textController.clear();
    },
    child: Text("Cancel"),
    ),

  //save
  MaterialButton(
    onPressed: (){
      //update delivery address
      String newAddress = textController.text;
      context.read<Restaurant>().updateDeliveryAddress(newAddress);
      Navigator.pop(context);
      textController.clear();


    } ,
    child: Text("Save"),
    ),

],
     )
     );

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5,left:20,right:25,bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now",
          
          style: TextStyle(
            fontSize: 15,
            color:Theme.of(context).colorScheme.tertiary ),),
          GestureDetector(
            onTap: ()=>openLocationSearchBox(context),
            child: Row(
              children: [
                  
                //address
                Consumer<Restaurant>(
                  builder:(context,restaurant,child)=>Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold
                    ),

                  ),

                ),
                

                //drop down menu
                  
                Icon(Icons.keyboard_arrow_down_rounded)
                  
              ],
            ),
          )
        ],
      ),
    );
  }
}