import 'package:flutter/material.dart';
import 'package:project/components/my_drawer_tile.dart';
import 'package:project/pages/settings_page.dart';
import 'package:project/services/auth/auth_services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

void logout(){
  final authService = AuthService();
  authService.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: EdgeInsets.only(top:100),
            child: Icon(
             
              Icons.lock_open_rounded,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 50,)),

          //
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Divider(),
          ),
          MyDrawerTile(
            text: "H O M E",
             icon: Icons.home, 
             onTap: ()=>Navigator.pop(context),
             ),
             MyDrawerTile(
            text: "S E T T I N G S",
             icon: Icons.settings, 
             onTap: (){Navigator.pop(context);
             Navigator.push(context, 
             MaterialPageRoute(
              builder: (context)=>SettingsPage()
              ));
             }
             ),
             Spacer(),
             MyDrawerTile(
            text: "L O G O U T",
             icon: Icons.logout, 
             onTap: logout),
             SizedBox(height: 50,)
        ],
      ),
    );
  }
}