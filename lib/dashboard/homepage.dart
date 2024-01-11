import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foxtradeapp/dashboard/logopage.dart';
import 'package:foxtradeapp/dashboard/recharge&paybills.dart';
import 'package:foxtradeapp/dashboard/teammanagement.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 2);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 2);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const rechargeandpaybills(),
    const teammanagement(),
    const logopage(),
    const Page4(),
    const Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: Color(0xFF0194B9),
              showLabel: false,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              // notchShader: const SweepGradient(
              //   startAngle: 0,
              //   endAngle: pi / 2,
              //   colors: [Colors.red, Colors.green, Colors.orange],
              //   tileMode: TileMode.mirror,
              // ).createShader(Rect.fromCircle(center: Offset.zero, radius: 8.0)),
              notchColor: Colors.white,

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: [
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                   Icons.shopping_cart,
                    color: Color(0xFF0194B9)
                  ),
                  itemLabel: 'rechargeandpaybills',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.group,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.group,
                    color: Color(0xFF0194B9)
                  ),
                  itemLabel: 'teammanagement',
                ),

                ///svg example
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/images/logo2.png',
                    
                    // color: Colors.blueGrey,
                  ),
                  activeItem: Image.asset(
                    'assets/images/logo.png',
                    // color: Colors.white,
                  ),
                  itemLabel: 'logopage',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.pie_chart,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.pie_chart,
                    color: Color(0xFF0194B9)
                  ),
                  itemLabel: 'Page 4',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Color(0xFF0194B9)
                  ),
                  itemLabel: 'Page 5',
                ),
              ],
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                // log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}

// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Colors.yellow, child: const Center(child: Text('Page naman')));
//   }
// }

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green, child: const Center(child: Text('Page 2')));
  }
}

// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Colors.red, child: const Center(child: Text('Page 3')));
//   }
// }

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue, child: const Center(child: Text('Page 4')));
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.lightGreenAccent, child: const Center(child: Text('Page 5')));
  }
}