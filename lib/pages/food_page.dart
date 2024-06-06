import 'package:flutter/material.dart';
import 'package:project/components/my_button.dart';
import 'package:project/models/food.dart';
import 'package:project/models/restaurant.dart';

import 'package:provider/provider.dart';


class FoodPage extends StatefulWidget {
  final Food food;
  final Map<AddOn,bool>selectedAddons={};

  
  FoodPage({super.key, required this.food})
  //initilize selected addons to be false
  {
  for(AddOn addon in food.availableAddOns)
  {
         selectedAddons[addon]=false;
  }
  }
  @override
  State<FoodPage> createState() => _FoodPageState();

}

class _FoodPageState extends State<FoodPage> {

  //method to add to cart
  void addToCart(Food food,Map<AddOn,bool>selectedAddons){
   //close the current food page to go back to menu
   Navigator.pop(context);

   //format the selected addon
    List<AddOn>currentlySelectedAddons = [];
    for(AddOn addon in widget.food.availableAddOns){
      if(widget.selectedAddons[addon]==true){
        currentlySelectedAddons.add(addon);
      }
    }

    //add to cart
    context.read<Restaurant>().addToCart(food,currentlySelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Scaffold(
        
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.food.imagePath,
                  ),
                ),
              ),
            
              //food name
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.food.name,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            
                    //food price
                    Text('Rs.' + widget.food.price.toString(),
                        style: TextStyle(fontSize: 16)),
                    SizedBox(
                      height: 5,
                    ),
            
                    Divider(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
            
                    //food description
                    Text(
                      widget.food.description,
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Add-ons",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(
                      height: 8,
                    ),
                    //addons
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).colorScheme.tertiary)),
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddOns.length,
                          itemBuilder: (context, index) {
                            AddOn addon = widget.food.availableAddOns[index];
                            return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text('Rs.' + addon.price.toString()),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool ?value) {
                                  setState(() {
                                    widget.selectedAddons[addon]=value!;
      
                                  });
      
                                });
                          }),
                    )
            
                    //button to add to cart
                  ],
                ),
              ),
              MyButton(
                onTap: ()=>addToCart(widget.food, widget.selectedAddons),
                 text: 'Add to Cart'),
                 SizedBox(height: 15,)
            ]),
          )),

          SafeArea(
            child: Opacity(
              opacity: 0.5,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary,
                  shape: BoxShape.circle
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_rounded),
                  onPressed: ()=>Navigator.pop(context),
                ),
              ),
            )
          )
    ]);

  }
}
