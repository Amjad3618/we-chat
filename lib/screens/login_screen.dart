import 'package:flutter/material.dart';
import 'package:we_chat/screens/forget_paassword_screen.dart';
import 'package:we_chat/screens/singup_screen.dart';
import 'package:we_chat/them/colors.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Login',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',labelStyle: TextStyle(color: primaryColor),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email,color: secondaryColor,),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',labelStyle: TextStyle(color: primaryColor),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock,color: secondaryColor,),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
      
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> ForgetPaasswordScreen()));
                  },
                  child: const Text('Forgot Password?',style: TextStyle(color: Colors.orange),),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add login functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SingUpScreen()));
                },
                child: const Text("Don't have an account? Sign up", style: TextStyle(
                  color: secondaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
