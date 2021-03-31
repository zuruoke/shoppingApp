import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/ui/explore_screen.dart';
import 'package:shopping_app/ui/home_screen.dart';
import 'package:shopping_app/ui/wallet.dart';

class TabScreen extends StatefulWidget{
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen>{
 
 PageController _pageController;
 int pageIndex = 0;

 onTapChange(int pageIndex){
   _pageController.animateToPage(pageIndex, duration: const Duration(microseconds: 400 ), curve: Curves.ease);
 }

 whenPageChanges(int index){
   setState(() {
       this.pageIndex = index; 
      });
 }

  @override
  void initState() {
    _pageController = PageController(); 
    super.initState();  
  }
   
  @override
  void dispose() { 
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          HomeScreen(),
          ExploreScreen(),
          WalletScreen(),
        ],
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: whenPageChanges,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white10,
        currentIndex: pageIndex,
        onTap: onTapChange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Colors.black,)),
          BottomNavigationBarItem(icon: Icon(Icons.explore_rounded, color: Colors.black,)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag, color: Colors.black,)),
        ],
      ),
    );
  }
  
} 