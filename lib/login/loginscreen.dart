
import 'package:flutter/material.dart';
import 'package:foxtradeapp/dashboard/homepage.dart';
import 'package:foxtradeapp/signup/signupscreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  String _error = '';

  @override
  Widget build(BuildContext context) {
  
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(padding: EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
              
              Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Image.asset('assets/images/logo.png',
                  height: size.height*0.1,
                  width: size.width*0.2,),
                  Text('FoxTrade',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                  ),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.04,
              ),
              SizedBox(
                // height: size.height*0.06,
                child: TextFormField(
                  
                  style: TextStyle(color: Colors.black,
                
                  fontSize: 14),
                  
                  decoration: InputDecoration(
                    
                    contentPadding: EdgeInsets.only(bottom: 1,left: 14),
                  
                    hintText: 'Username',
                    prefixIcon: Icon(Icons.person,
                    size: 20,),
                    
                    hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black,
                      width: 1)
                    ),
                    labelStyle: TextStyle(color: Colors.black ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1.0,
                      color: Colors.black)
                    )
                    
                  )
                ),
              ),

              SizedBox(height: size.height*0.02,),
              SizedBox(
                // height: size.height*0.06,
                child: TextFormField(
                  obscureText: _obscureText,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
    return 'Please enter an email';
  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    return 'Please enter a valid email';
  } else if (!value.endsWith('@gmail.com')) {
    return 'Please enter a Gmail address';
  }
  return null;
                  },
                  style: TextStyle(color: Colors.black,
                
                  fontSize: 14),
                  
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
                    contentPadding: EdgeInsets.only(bottom: 1,left: 14),
                  
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password,
                    size: 20,),
                    
                    hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black,
                      width: 1)
                    ),
                    labelStyle: TextStyle(color: Colors.black ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1.0,
                      color: Colors.black)
                    )
                    
                  )
                ),
              ),
              Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){
          
            }, child: Text("Forgot Password?",
            style: TextStyle(
              color: Color(0xFF0194B9),
              decoration: TextDecoration.underline,
              decorationColor: Color(0xFF0194B9), 
            decorationThickness: 1.0,
              fontSize: 12,
              
            ),))
            ),
              SizedBox(height: size.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width*0.6,
                    child: ElevatedButton(
                      
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0194B9),
                        elevation: 7
                      ),
                      onPressed: () {
                       Get.to(MyHomePage());
                      },
                      child: Text('Login',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        )
                      )),
                    ),
                  ),

                ],
              ),
              TextButton(onPressed: (){
                      Get.to(signupscreen());
                      },
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(text: "Dont\'t have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12
                          )),
                          TextSpan(text: "Signup",
                          style: TextStyle(color: Color(0xFF0194B9),
                          fontSize: 12)
                          )
                        ]
                        )
                      )),
              
              
              ],
            ),),
              
            Positioned(child: Image.asset('assets/images/fox.png',
              height: size.height*0.3,),
              bottom: 0,
              left: 0,),

              Positioned(child: Image.asset('assets/images/topleftimg.png',
              height: size.height*0.24,),
              top: 0,
              left: 0,),

              Positioned(
                left: 0,
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,top: 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome,',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      )
                    ),),
                    Text('Login!',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 36
                      )
                    ),)
                  ],
                                ),
                ))
              
              


      
          ],
        ),
      ),
    );
  }
}