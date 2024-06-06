import 'package:flutter/material.dart';
import 'package:project/components/my_button.dart';
import 'package:project/components/my_textfield.dart';

import 'package:project/services/auth/auth_services.dart';

class LoginPage extends StatefulWidget {
final void Function()? onTap; 
   LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  
 void login() async {

  //if well authenticated
  final _authService = AuthService();

  //try sign in
  try{
    await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
  }

catch(e)
{
    showDialog(
      context: context, 
      builder: (context)=>AlertDialog(
        title: Text(e.toString()),
      )
      );
}
  }

void forgotPw(){
  showDialog(
    context: context,
     builder: (context)=>AlertDialog(
      backgroundColor: Colors.pink,
      title: Text("User tapped forgot password"),
     )
     );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).
      colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.lock_open_rounded,size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),
              Text("Food Delivery App",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16),
              
              ),
             const SizedBox(height: 25,),
          
              MyTextField(
                controller: emailController,
                 hintText: "Email", 
                 obscureText: false),
          
                const SizedBox(height: 10,),
          
              MyTextField(
                controller: passwordController,
                 hintText: "Password", 
                 obscureText: true),
          
          const SizedBox(height: 70,),
          MyButton(
            onTap: login, 
            text: "Sign in"),
          const SizedBox(height: 25,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a member?",style: 
              TextStyle(fontSize: 15,color: Theme.of(context).colorScheme.primary),),
             const SizedBox(width: 5,),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Register now",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,color: Theme.of(context).colorScheme.tertiary),),
              )
            ],
            )
          
            ],
          ),
        ),
      ),
    );
  }
}