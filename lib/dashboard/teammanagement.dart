import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class teammanagement extends StatefulWidget {
  const teammanagement({super.key});

  @override
  State<teammanagement> createState() => _teammanagementState();
}

class _teammanagementState extends State<teammanagement> {
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
          child: Text('Team Management         ',
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
        child: Padding(
          
          padding: const EdgeInsets.only(left: 17,right: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                
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
          
                    
                      
                       Image.asset('assets/images/investnow.png',
                      width: double.infinity,
                      height: size.height*0.1,),

                      SizedBox(height: size.height*0.02,),

                      Text('Team',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        )
                      ),),

                      SizedBox(height: size.height*0.02,),


                      teammanagementwidgets(size: size, label: 'Add Funds'),

                       SizedBox(height: size.height*0.014,),
                    
                    teammanagementwidgets(size: size, label: 'Fund Transfer'),
                    SizedBox(height: size.height*0.014,),
                    
                    teammanagementwidgets(size: size, label: 'Team Size'),
                    SizedBox(height: size.height*0.014,),
                    
                    teammanagementwidgets(size: size, label: 'Team Business'),
                    SizedBox(height: size.height*0.014,),
                    
                    teammanagementwidgets(size: size, label: 'Team Self Investment'),
          
          
            ],
          ),
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

class teammanagementwidgets extends StatelessWidget {
  const teammanagementwidgets({
    super.key,
    required this.size,
    required this.label,
    
  });

  final Size size;
  final String label;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Container(
        padding: EdgeInsets.only(left:15,right: 15 ),
        height: size.height*0.055,
        
        width: double.infinity,
        decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 4.0,
                        ),
                      ],
      
                          ),
                          child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(label,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 12
          )
          
        ),),
      
        Image.asset('assets/images/arrow.png',
        height: size.height*0.03,
        width: size.width*0.05,)
      ],
                          ),
      ),
    );
  }
}