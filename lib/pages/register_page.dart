import "package:flutter/material.dart";
import "package:project/components/my_button.dart";
import "package:project/components/my_textfield.dart";
import "package:project/pages/home_page.dart";
import "package:project/services/auth/auth_services.dart";

class RegisterPage extends StatefulWidget {
  final void Function()? onTap; 
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController confirmpasswordController=TextEditingController();

  //register method
  void register() async{
    //get auth service
    final _authService = AuthService();

    //check if passwords match -> create user
    if(passwordController.text == confirmpasswordController.text){
      //try creating user
      try{
        
         Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>
                    HomePage()
                  
                  ));
                  await _authService.signUpWithEmailPassword(emailController.text, emailController.text);
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
    else{
      showDialog(
        
          context: context,
          
           builder: (context)=>AlertDialog(
            title: Text("Passwords don't match!"),
           )
           );
    }
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
              Text("Let's create an account for you!",
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
                  const SizedBox(height: 10,),
                  MyTextField(
                controller: confirmpasswordController,
                 hintText: "Confirm Password", 
                 obscureText: true),
          
          
          const SizedBox(height: 70,),
          MyButton(
            onTap: ()=>register()
          , text: "Sign Up"),
          const SizedBox(height: 25,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account ?",style: 
              TextStyle(fontSize: 15,color: Theme.of(context).colorScheme.primary),),
             const SizedBox(width: 5,),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Login here",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,color: Theme.of(context).colorScheme.tertiary),),
              )
            ],
            )
          
            ],
          ),
        ),
      ),
    ); ;
  }
}