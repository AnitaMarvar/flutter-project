import 'package:flutter/material.dart';
import 'package:project/components/my_button.dart';
import 'package:project/components/my_cart_tile.dart';
import 'package:project/models/restaurant.dart';
import 'package:project/pages/payment_page.dart';


import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context,restaurant,child){
      //cart
      final userCart = restaurant.cart;

      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Cart",style: TextStyle(color: Theme.of(context).colorScheme.tertiary),),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context)=>AlertDialog(
                    title: Text("Are you sure you want to clear the cart?"),
                  actions: [
                    TextButton(
                      onPressed: ()=>Navigator.pop(context),
                       child: Text("Cancel"),
                       ),

                       TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                        restaurant.clearCart();
                      },
                       child: Text("Yes"),
                       ),
                  ],
                  ),
                  );
              },
               icon: Icon(Icons.delete),
               )
          ],
        ),
        body:Column(
          children: [
            Expanded(
              child: Column(
                children: [
                 userCart.isEmpty?
                 Expanded(
                   child: Center(
                    child: Text("Cart is empty",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
                 ) : Expanded(
                    child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context,index){
                        //get individual cart item
                        final cartItem=userCart[index];
                        //return cart tile ui
                        return MyCartTile(cartItem: cartItem);
                   } )
              
                    )
                ],
              ),
            ),
            MyButton(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage())), 
              text: "Go to checkout"),
          SizedBox(height: 20,)
          ],
        )

      );
    },);
  }
}