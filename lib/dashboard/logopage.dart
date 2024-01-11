import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class logopage extends StatefulWidget {
  const logopage({super.key});

  @override
  State<logopage> createState() => _logopageState();
}

class _logopageState extends State<logopage> {
  int currentIndex=0;
  final controller =CarouselController();

  List<String> images=["assets/images/slider1.png",
  "assets/images/slider1.png",
  "assets/images/slider1.png",
  "assets/images/slider1.png"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0194B9),
       title: Align(
                alignment: Alignment.topLeft,
                child: Text('Hi,Naman',
                style: GoogleFonts.racingSansOne(
                  textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 19
                ),
                )),
              ),
         actions: [
                Padding(
                  padding: EdgeInsets.only(right: 7),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.transparent
                          
                    ),
                    child: IconButton(onPressed: (){
                      
                    }, icon: Icon(Icons.notifications,
                    color: Colors.white)),
                  ),
                )
              ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 15),
              height: size.height*0.2,
              width: double.infinity,
              child: PageView.builder(
                          onPageChanged: (index){
                            setState(() {
                              currentIndex=index % images.length;
                            });
                          },
                          itemBuilder: (context,index){
                            return  Image(image: AssetImage(images[index % images.length],
                            ),
                            width:double.infinity,
                            // height: size.height*0.2,
                            );
                              // child: Image(image: AssetImage(images[index])),
                            
                          })
                        
            ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    for(var i =0;i<images.length;i++) buildIndicator(currentIndex ==i)
                  ],),


                  SizedBox(height: size.height*0.02,),
                  Container(
                    padding: EdgeInsets.only(left: 17,top: 20,right: 17,bottom: 20),
                    height: size.height*0.12,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 4.0,
                  ),
                ],
                      
                    ),

                    child: Row(
                      children: [

                        Expanded(
                          child: Flexible(
                            child: Container(
                              height: double.infinity,
                              padding: EdgeInsets.only(left: 20,right: 10,top: 7,bottom: 7),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF0194B9),
                                ),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(0.0, 3.0,), //(x,y)
                                                blurRadius: 5.0,
                                                spreadRadius: 0.0
                                              ),
                                            ],
                              ),
                            
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 Text('E1',
                                 style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF0194B9),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 26
                                  )
                                 ),
                                 ),
                                 SizedBox(width: size.width*0.018,),
                                 Text('Executive Club',
                                 overflow: TextOverflow.ellipsis,
                                 style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: size.height*0.012,
                                    fontWeight: FontWeight.bold
                                  )
                                 ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width*0.06,),
                         Expanded(
                          child: Container(
                            height: double.infinity,
                            padding: EdgeInsets.only(left: 20,right: 20,top: 7,bottom: 7),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF0194B9),
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0,), //(x,y)
                    blurRadius: 5.0,
                    spreadRadius: 0.0
                  ),
                ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('4423556467',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),),
                                    Text('(invite a friend)',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Color(0xFF0194B9),
                                        fontSize: 10,
                                        
                                      )
                                    ),)
                                  ],
                                ),
                                Icon(Icons.share,
                                color: Color(0xFF0194B9),

                                )
                              ],
                            ),
                          ),
                        ),

                      ]
                      
                    ),
                  )
         ,

         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
          SizedBox(height: size.height*0.028,),

         Container(
          padding: EdgeInsets.only(left: 17,top: 17,right: 17,bottom: 10),
                    height: size.height*0.17,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 4.0,
                  ),
                ],
                      
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Financial Report',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                          )
                        ),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/dailyincome.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Daily Income',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),)

                              ],
                            ),


                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/withdrawal.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Withdrawal',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),)

                              ],
                            ),



                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/currentinvest.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Current Invest',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),)

                              ],
                            ),


                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/teamsize.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Team Size',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),)

                              ],
                            )
                          ],
                        )
                      ],
                    ),


         ),






         SizedBox(height: size.height*0.028,),

         Container(
          padding: EdgeInsets.only(left: 17,top: 17,right: 17,bottom: 17),
                    height: size.height*0.21,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 4.0,
                  ),
                ],
                      
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Financial Report',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          )
                        ),),
                        SizedBox(height: size.height*0.017,),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Container(
                                padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                                height: size.height*0.09,
                                width: size.width*0.32,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.2,
                                    color: Colors.black,
                                    
                                  ),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$4560.00',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                      )
                                    ),
                                    ),
                                    SizedBox(height: size.height*0.007,),
                                    Text('Commission',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF0194B9),
                                        fontSize: 12
                                      )
                                    ),
                                    )
                                  ],
                                ),
                              ),

                              SizedBox(width: size.width*0.03,),

                              Container(
                                padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                                height: size.height*0.09,
                                width: size.width*0.32,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.2,
                                    color: Colors.black,
                                    
                                  ),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$4560.00',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                      )
                                    ),
                                    ),
                                    SizedBox(height: size.height*0.007,),
                                    Text('ROI',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF0194B9),
                                        fontSize: 12
                                      )
                                    ),
                                    )
                                  ],
                                ),
                              ),

                              SizedBox(width: size.width*0.03,),

                              Container(
                                padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                                height: size.height*0.09,
                                width: size.width*0.32,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.2,
                                    color: Colors.black,
                                    
                                  ),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$4560.00',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                      )
                                    ),
                                    ),
                                    SizedBox(height: size.height*0.007,),
                                    Text('Club',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF0194B9),
                                        fontSize: 12
                                      )
                                    ),
                                    )
                                  ],
                                ),
                              ),




                              SizedBox(width: size.width*0.03,),

                              Container(
                                padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                                height: size.height*0.09,
                                width: size.width*0.32,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.2,
                                    color: Colors.black,
                                    
                                  ),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('\$4560.00',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15
                                      )
                                    ),
                                    ),
                                    SizedBox(height: size.height*0.007,),
                                    Text('Salary',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF0194B9),
                                        fontSize: 12
                                      )
                                    ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),


         )

         ,

         SizedBox(height: size.height*0.028,),

         Container(
          padding: EdgeInsets.only(left: 17,top: 17,right: 17,bottom: 17),
                    height: size.height*0.21,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 4.0,
                  ),
                ],
                      
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Account',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                          )
                        ),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/selfinvestment.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                             Text('Self',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11
                                )
                              ),),
                              Text('Investment',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11
                                )
                              ),),
                            

                              ],
                            ),


                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/fundtransfer.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Fund',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),

                            Text('Transfer',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),)

                              ],
                            ),



                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/addfunds.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Add',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),
                            Text('Funds',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),)

                              ],
                            ),


                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/teamselfinvestment.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Team Self',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),
                            Text('Investment',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),)

                              ],
                            )
                          ],
                        )
                      ],
                    ),


         ),

         SizedBox(height: size.height*0.028,),


          Container(
                    padding: EdgeInsets.only(left: 17,top: 20,right: 17,bottom: 20),
                    height: size.height*0.12,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 4.0,
                  ),
                ],
                      
                    ),

                    child: Row(
                      children: [

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 7,bottom: 7),
                            height: size.height*0.061,
                           decoration: BoxDecoration(
                              color: Color(0xFF1CAD67),
                              
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0,), //(x,y)
                    blurRadius: 5.0,
                    spreadRadius: 0.0
                  ),
                ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                               icon: Image.asset(
                                 "assets/images/deposit.png",
                                 width: size.width*0.09,
                                 height: size.height*0.055,
                               ),
                               onPressed: () {},
                             ),

                             Text('Deposit',
                             style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              )
                             ),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: size.width*0.06,),
                         Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 7,bottom: 7),
                            height: size.height*0.061,
                           decoration: BoxDecoration(
                              color: Color(0xFFFF5033),
                              
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0,), //(x,y)
                    blurRadius: 5.0,
                    spreadRadius: 0.0
                  ),
                ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                               icon: Image.asset(
                                 "assets/images/withdrawalred.png",
                                 width: size.width*0.09,
                                 height: size.height*0.055,
                               ),
                               onPressed: () {},
                             ),

                             Text('Withdrawal',
                             style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              )
                             ),)
                              ],
                            ),
                          ),
                        ),

                      ]
                      
                    ),
                  ),
          SizedBox(height: size.height*0.5,),


          ],
        ),
      )
    );
  }

  Widget buildIndicator(bool isSelected){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: isSelected ? 7 : 3,
        width: isSelected ? 7 : 3,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey
        ),
      ),
    );
  }
}