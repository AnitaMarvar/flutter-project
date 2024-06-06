import 'package:flutter/material.dart';
class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  void Function()? onTap; 
   MyDrawerTile({super.key,
   required this.text,
   required this.icon,
   required this.onTap
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon,
        color: Theme.of(context).colorScheme.tertiary,
        size: 30,),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).colorScheme.tertiary),
            ),
      ),
    );
  }
}