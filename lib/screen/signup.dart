import 'package:flutter/material.dart';
import 'package:muse/config/constant.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Cover.png'), fit: BoxFit.cover,repeat: ImageRepeat.noRepeat),
        ),
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Image.asset('assets/images/logo.svg.png', width: 192, height: 192,),
            Center(
              heightFactor: 3.0,
              child: Text(
                "Sign-in using",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  widthFactor: 1.5,
                  child: Image.asset(
                    'assets/images/facebook.png',
                    fit: BoxFit.cover,
                      width: 63,
                      height: 64
                  ),
                ),
                Center(
                  widthFactor: 1.5,
                  child: Image.asset(
                    'assets/images/google.png',
                    fit: BoxFit.cover,
                    width: 63,
                    height: 64,
                  ),
                ),
              ],
            ),
            Center(
              heightFactor: 3.0,
              child: Text(
                "or",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false
                      // otherwise.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a Snackbar.
                        SnackBar(content: Text('Processing Data'));
                      }
                    },
                    child: Text('Submit'),
                  ),
                  
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  widthFactor: 1.0,
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 14.0, color: Colors.white),
                  ),
                ),
                Center(
                  widthFactor: 1.1,
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Center(
              heightFactor: 3.0,
              child: Text(
                "SKIP",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
