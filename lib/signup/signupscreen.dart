
import 'package:flutter/material.dart';
import 'package:foxtradeapp/login/loginscreen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
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
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height*0.09,),
                
                
                       Image.asset('assets/images/logo.png',
                    height: size.height*0.1,
                    width: size.width*0.2,),
                    Text('FoxTrade',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 24,
                      fontWeight: FontWeight.w500
                    ),),
                      
                    
                SizedBox(
                  height: size.height*0.04,
                ),
                Container(
                    height: size.height*0.38,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                                        // height: size.height*0.06,
                                        child: TextFormField(
                      
                      style: TextStyle(color: Colors.black,
                                        
                      fontSize: 14),
                      
                      decoration: InputDecoration(
                        
                        contentPadding: EdgeInsets.only(bottom: 1,left: 14),
                      
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.mail,
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
                      
                      
                      style: TextStyle(color: Colors.black,
                                        
                      fontSize: 14),
                      
                      decoration: InputDecoration(
                       
                        contentPadding: EdgeInsets.only(bottom: 1,left: 14),
                      
                        hintText: 'Name',
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
                      
                      
                      style: TextStyle(color: Colors.black,
                                        
                      fontSize: 14),
                      
                      decoration: InputDecoration(
                       
                        contentPadding: EdgeInsets.only(bottom: 1,left: 14),
                      
                        hintText: 'Referal',
                        prefixIcon: Icon(Icons.code,
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
                      
                      
                      style: TextStyle(color: Colors.black,
                                        
                      fontSize: 14),
                      
                      decoration: InputDecoration(
                       
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
                                      SizedBox(height: size.height*0.02,),
                                      SizedBox(
                                        // height: size.height*0.06,
                                        child: TextFormField(
                      
                      
                      style: TextStyle(color: Colors.black,
                                        
                      fontSize: 14),
                      
                      decoration: InputDecoration(
                       
                        contentPadding: EdgeInsets.only(bottom: 1,left: 14),
                      
                        hintText: 'Confirm Password',
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
                                      
                                      SizedBox(height: size.height*0.2,),
                        ],
                      ),
                    ),
                  ),
                
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
                          if (_formKey.currentState!.validate()){}
                        },
                        child: Text('Signup',
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
                        Get.to(loginscreen());
                        },
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(text: "Already have an account? ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12
                            )),
                            TextSpan(text: "Login",
                            style: TextStyle(color: Color(0xFF0194B9),
                            fontSize: 12)
                            )
                          ]
                          )
                        )),
                
                
                ],
              ),
            ),),
              
            Positioned(child: Image.asset('assets/images/fox.png',
              height: size.height*0.315,),
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
                    Text('Create your account,',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      )
                    ),),
                    Text('Signup!',
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