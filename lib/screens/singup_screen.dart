import 'package:flutter/material.dart';
import 'package:we_chat/them/colors.dart';

class SingUpScreen extends StatelessWidget {


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
                'SingUp',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15,),
               CircleAvatar(
                radius: 73,
                backgroundColor: primaryColor,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,size: 40,)),
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
                const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'name',labelStyle: TextStyle(color: primaryColor),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock,color: secondaryColor,),
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
                  'SignUp',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
              Navigator.pop(context);
                },
                child: const Text("already have an account? Login",style: TextStyle(color: secondaryColor),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
