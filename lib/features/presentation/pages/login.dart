import 'package:ambulance_booking_and_tracking_application/config/theme/app_themes.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/book_ambulance.dart';
import 'package:ambulance_booking_and_tracking_application/features/presentation/pages/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../auth/validator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();


  TextEditingController email= TextEditingController();
  TextEditingController password = TextEditingController();

  bool visible = true;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(40.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: screenSize.height*0.03),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: screenSize.width*0.08,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter'
                    ),
                  ),
                ),
              ),
              Image.asset('assets/images/loginVector.png'),
              SizedBox(
                height: screenSize.height*0.07,
              ),
              Form(
                key: formstate,
                child: Column(
                  children: [
                    Container(
                      height: screenSize.height*0.1,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (val) {
                          return validInput(val!, 2, 30);
                        },
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value)
                        {
                          print(value);
                        },
                        onChanged: (String value)
                        {
                          print(value);
                        },
                        style: TextStyle(
                          color: background,
                          fontSize: screenSize.width*0.05
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: primary,
                          labelText: 'Enter your email',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(
                            color: background,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                                Icons.email_outlined,
                              size: screenSize.width*0.09,
                              color: background,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height*0.02,
                    ),
                    Container(

                      height: screenSize.height*0.1,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (val) {
                          return validInput(val!, 2, 30);
                        },
                        controller: password,
                        keyboardType: TextInputType.visiblePassword,
                        onFieldSubmitted: (String value)
                        {
                          print(value);
                        },
                        onChanged: (String value)
                        {
                          print(value);
                        },
                        obscureText: visible,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: primary,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Password',
                          floatingLabelBehavior: FloatingLabelBehavior.never,

                          labelStyle: TextStyle(
                            color: background
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                                Icons.lock,
                              size: screenSize.width*0.09,
                              color: background,
                            ),
                          ),
                          suffixIcon: visible? IconButton(
                            icon: Icon(Icons.visibility_off),
                            color: background,
                            onPressed: (){
                              setState(() {
                                visible = false;
                              });
                            },
                          ):IconButton(
                            icon: Icon(Icons.visibility),
                            color: background,
                            onPressed: (){
                              setState(() {
                                visible = true;
                              });
                            },
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height*0.01,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot Passport?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height*0.07,
              ),
              MaterialButton(
                height: screenSize.height*0.07,
                minWidth: screenSize.width*1.0,
                  onPressed: (){
                  Navigator.of(context).pushNamedAndRemoveUntil('/book ambulance', (route) => false);
                  },
                color: primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: background,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height*0.013,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                          fontSize: 18.0,
                        ),
                      ),),
                ],
              )

        
        
            ],
          ),
        ),
      ),
    );
  }
}
