import 'package:flutter/material.dart';
import 'package:we_chat/them/colors.dart';

class ForgetPaasswordScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea( 
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Email',labelStyle: TextStyle(color: primaryColor),
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
                    'Send',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
