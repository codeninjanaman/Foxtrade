
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rechargeandpaybills extends StatefulWidget {
  const rechargeandpaybills({super.key});

  @override
  State<rechargeandpaybills> createState() => _rechargeandpaybillsState();
}

class _rechargeandpaybillsState extends State<rechargeandpaybills> {
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
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,
        color: Colors.white,)),
        title: Align(
          alignment: Alignment.center,
          child: Text('Reacharge & Pay bills         ',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400
            )
          ),),
        ),
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


                  Padding(
                    padding: const EdgeInsets.only(left: 17,right: 17),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(0.0, 3.0,), //(x,y)
                                                blurRadius: 5.0,
                                                spreadRadius: 0.0
                                              ),
                                            ],
                            ),
                          
                            height: size.height*0.1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/wallet.png',
                                height: size.height*0.024,
                                width: size.width*0.08,),

                                SizedBox(height: size.height*0.01,),

                                Text('Wallet',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF0194B9),
                                    fontSize: 14
                                  )
                                ),)
                              ],
                            ),
                           
                          ),
                        ),

                        SizedBox(width: size.width*0.04,),
                        Expanded(
                          child: Container(
                            
                            height: size.height*0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(0.0, 3.0,), //(x,y)
                                                blurRadius: 5.0,
                                                spreadRadius: 0.0
                                              ),
                                            ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/rewards.png',
                                height: size.height*0.024,
                                width: size.width*0.08,),

                                SizedBox(height: size.height*0.01,),

                                Text('Rewards',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF0194B9),
                                    fontSize: 14
                                  )
                                ),)
                              ],
                            ),
                           
                          ),
                        ),

                        SizedBox(width: size.width*0.04,),
                        Expanded(
                          child: Container(
                           
                            height: size.height*0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                offset: Offset(0.0, 3.0,), //(x,y)
                                                blurRadius: 5.0,
                                                spreadRadius: 0.0
                                              ),
                                            ],
                            ),
                           child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/refer.png',
                                height: size.height*0.024,
                                width: size.width*0.08,),

                                SizedBox(height: size.height*0.01,),

                                Text('Refer',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF0194B9),
                                    fontSize: 14
                                  )
                                ),)
                              ],
                            ),
                          ),
                        ),

                        
                      ],
                    ),

                  ),

                  SizedBox(height: size.height*0.01,),
                  Padding(
                    padding: const EdgeInsets.only(left: 17,right: 17),
                    
                    child: Image.asset('assets/images/investnow.png',
                    width: double.infinity,
                    height: size.height*0.1,),
                  ),

                  SizedBox(height: size.height*0.028,),

         Container(
          padding: EdgeInsets.only(left: 17,top: 17,right: 17,bottom: 10),
                    height: size.height*0.5,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/mobilerecharge.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Mobile',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),

                            Text('Recharge',
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
    "assets/images/DTH.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('DTH',
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
    "assets/images/electricity.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Electricity',
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
    "assets/images/rentpayment.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Rent',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),
                            Text('Payment',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),

                              ],
                            )
                          ],
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/creditcard.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Credit Card',
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
    "assets/images/loanpayment.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Loan',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),
                            Text('payment',
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
    "assets/images/mobilerecharge.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('TopUp',
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
    "assets/images/bookacylinder.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Book A',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),
                            Text('Cylinder',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),

                              ],
                            )
                          ],
                        ),



                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                IconButton(
  icon: Image.asset(
    "assets/images/creditcard.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Book A',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),

                            Text('Cylinder',
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
    "assets/images/loanpayment.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Loan',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),
                            Text('payment',
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
    "assets/images/bookacylinder.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('Mobile',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),
                            Text('Recharge',
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
    "assets/images/bookacylinder.png",
    width: size.width*0.125,
    height: size.height*0.07,
  ),
  onPressed: () {},
),
                            Text('DTH',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),
                            Text('Recharge',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              )
                            ),),

                              ],
                            )
                          ],
                        ),


                        



                      ],
                    ),


         ),

         SizedBox(height: size.height*0.4,)
        ],
      ),
    ),
    
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