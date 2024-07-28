import 'package:ambulance_booking_and_tracking_application/config/theme/app_themes.dart';
import 'package:ambulance_booking_and_tracking_application/features/auth/validator.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();


  TextEditingController email= TextEditingController();
  TextEditingController credit = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController address = TextEditingController();

  String? selectedService ;
  String? svalue="-1";


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
                    'SINGUP',
                    style: TextStyle(
                        fontSize: screenSize.width*0.08,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter'
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('assets/images/signUpVector.png'),
              ),
              SizedBox(
                height: screenSize.height*0.05,
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
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: background,
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
                        controller: credit,
                        keyboardType: TextInputType.number,
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
                          labelText: 'CNIC Number',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(
                            color: background,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.credit_card,
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
                        controller: fullName,
                        keyboardType: TextInputType.name,
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
                          labelText: 'Full Name',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(
                            color: background,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.person,
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
                        controller: number,
                        keyboardType: TextInputType.phone,
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
                          labelText: '+967 777 777 777',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(
                            color: background,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.phone,
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
                            prefixIcon: Icon(
                              Icons.lock,
                              color: background,
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
                        controller: address,
                        keyboardType: TextInputType.streetAddress,
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
                          labelText: 'Address',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(
                            color: background,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.location_pin,
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
                      width: 380.0,
                      child: DropdownButtonFormField(
                        style: TextStyle(
                          color: background,
                          fontWeight: FontWeight.bold,
                          fontSize: screenSize.width*0.04
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: primary,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: "Select the service",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),

                        value: svalue,
                        items: [
                          DropdownMenuItem(
                            child: Text("Select the srevice...",
                            style: TextStyle(
                              color: background,
                            ),),
                            value: "-1",
                          ),
                          DropdownMenuItem(
                            child: Text("- Haddah",
                            style: TextStyle(
                              color: primary,
                            ),),
                            value: "1",
                          ),
                          DropdownMenuItem(
                            child: Text("- AL-safih",
                              style: TextStyle(
                                color: primary,
                              ),),
                            value: "2",
                          ),
                          DropdownMenuItem(
                            child: Text("- old sanaa",
                              style: TextStyle(
                                color: primary,
                              ),),
                            value: "3",
                          ),
                          DropdownMenuItem(
                            child: Text("- bab al-Yemen",
                              style: TextStyle(
                                color: primary,
                              ),),
                            value: "4",
                          )
                        ], onChanged: (value) {
                        selectedService = value!;

                      },

                      ),
                    ),
                    SizedBox(
                      height: screenSize.height*0.02,
                    ),
                    
                    Image.asset('assets/images/uploadCNIC.png')
                    
                  ],
                ),
              ),

              SizedBox(
                height: screenSize.height*0.05,
              ),
              MaterialButton(
                height: screenSize.height*0.07,
                minWidth: screenSize.width*1.0,
                onPressed: (){
                  Navigator.of(context).pop();
                },
                color: primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  "SingUp",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: background,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height*0.025,
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
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'SignIn',
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
