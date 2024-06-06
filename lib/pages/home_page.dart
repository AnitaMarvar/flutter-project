
import 'package:flutter/material.dart';
import 'package:project/components/my_current_location.dart';
import 'package:project/components/my_description_box.dart';
import 'package:project/components/my_drawer.dart';
import 'package:project/components/my_food_tile.dart';
import 'package:project/components/my_sliver_app_bar.dart';
import 'package:project/components/my_tab_bar.dart';
import 'package:project/models/food.dart';
import 'package:project/models/restaurant.dart';
import 'package:project/pages/food_page.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  //SingleTickerProviderStateMixin helps to use the tab controller
  //tab bar controller
  late TabController _tabController;
  @override
 void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

// sort out and return a list of the food items that belong to the specific category
List<Food> _filterMenuByCategory(FoodCategory category,List<Food> fullMenu)
 {
   return fullMenu.where((food) =>food.category==category).toList();
 }

 //return list of foods in given category
 List<Widget>getFoodInThisCategoty(List<Food>fullMenu){
  return FoodCategory.values.map((category){
   
    // get category menu
    List<Food>categoryMenu = _filterMenuByCategory(category, fullMenu);
  return ListView.builder(
    itemCount: categoryMenu.length,
    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemBuilder: (context,index){
      //get individual food
      final food=categoryMenu[index];
      //return food tile UI
       return FoodTile(
        food: food,
         onTap:(){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodPage(food: food)));
         }
         );
    },);
  }).toList();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: MyDrawer(),
      body: NestedScrollView(
        
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: Text("Sunset Diner"),
            // title:MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 20,
                    color:Theme.of(context).colorScheme.secondary),
              
                  
                  //current location
                  MyCurrentLocation(),
                  MyDescriptionBox(),

                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: MyTabBar(
                      tabController: _tabController
                      ),
                  )

                ],
              ),

          ),
        ],
        body: Consumer<Restaurant>(
          
          builder: (context,restaurant,child)=>
         Padding(
           padding: const EdgeInsets.only(left:8,right: 8),
           child: TabBarView(
            
            controller: _tabController,
            children: getFoodInThisCategoty(restaurant.menu),
                   ),
         )
      ),
    ));
  }
}
