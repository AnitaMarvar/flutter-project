import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/themes/theme_provider.dart';

import 'package:provider/provider.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        title: Text("Settings"),
        
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
             vertical: 20,

              horizontal: 20),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark Mode",style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary
                ),),
                
                CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode, 
                onChanged: (value)=>Provider.of<ThemeProvider>(context,listen: false).toggleTheme(), 
                )

              ],),
          )
        ],
      ),
    );
    
    
  }
}