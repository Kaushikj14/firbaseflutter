import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 1.0,
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          onPressed: () async {
            // Imp (calling a Function which is present in auth.dart)
            dynamic result = await _auth
                .signInAnon(); //dynamic because it could be null and it could be returing result

            if (result == null) {
              print("Error signing in");
            } else {
              print("Signed In");
              print(result);
            }
          },
          child: Text("Sign In Anony"),
        ),
      ),
    );
  }
}
