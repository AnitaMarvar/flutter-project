import 'package:flutter/material.dart';
import 'package:project/pages/cart_page.dart';


class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key,required this.child,required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      centerTitle: true,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=>CartPage()));
          },
          icon:Icon(Icons.shopping_cart,size: 30,))
      ],

      backgroundColor: Theme.of(context).colorScheme.background,
      title: title,
      
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        expandedTitleScale: 1,
        ),
        
    );
  }
}