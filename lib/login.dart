
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udacoding_week1/signup.dart';

class LoginPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  String _Email, _Password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/Intro_1.png"),
              height: 150,
            ),
            SizedBox(height: 50.0,),
            Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 10.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(color: Colors.black)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(40.0),
                            )
                        ),
                        validator: (input) =>
                        !input.contains('@')
                            ? 'silahkan masukan Email anda'
                            : null,
                        onSaved: (input) => _Email = input,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 10.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Kata Sandi',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(color: Colors.black)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(40.0),
                            )
                        ),
                        validator: (input) =>
                        input.length < 8
                            ? 'Kata Sandi yang harus di masukan minimal 8 angka'
                            : null,
                        onSaved: (input) => _Password = input,
                        obscureText: true,
                      ),
                    ),

                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: FlatButton(

                              onPressed: (){},
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                        ),
                          SizedBox(width: 15,),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.green,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: FlatButton(
                              onPressed: (){
                                Navigator.push(context, CupertinoPageRoute(builder: (context) => SignInPage() ));
                              },
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                        ),
                      ],
                    )

                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}