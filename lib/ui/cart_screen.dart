import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/helper/items.dart';

class CartScreen extends StatefulWidget{

  final String imgUrl;
  final String name;
  final int price;

  CartScreen({this.imgUrl, this.name, this.price});
  
  @override
  _CartScreenState createState() => _CartScreenState();

}

class _CartScreenState extends State<CartScreen> {
  int pageIndex = 0;
  int colorChoice = 0;
  String selected = 'L';
  bool isPressed = false;
  List itemList = [];

  whenPageChanges(int index){
    setState(() {
          this.pageIndex = index;
        });
  }

  addToList(String urL, String name, int color, String size, int price){
    itemList.add(Item(urL, name, color, size, price));
  }


  topScreen(){
    return ClipRRect( 
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(35),
        bottomRight: Radius.circular(35),
      ),
      child: Container(
        height: 350,
        child: 
          Stack(
        children: [
        PageView(
          children: [
            pageViewContents(widget.imgUrl),
            pageViewContents(widget.imgUrl),
            pageViewContents(widget.imgUrl),
          ],
        onPageChanged: whenPageChanges,
        ),
        iconBackButton(),
        cartIconButton(),
        navigationIcons(),
        ],
        
          ),
      ));
  }

  navigationIcons(){
    return Positioned(
      bottom: 10, right: 184,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.brightness_1, size: pageIndex == 0 ? 13 : 6, color: Colors.white,),
        Padding(padding: EdgeInsets.all(3)),
        Icon(Icons.brightness_1, size: pageIndex == 1 ? 13 : 6, color: Colors.white),
        Padding(padding: EdgeInsets.all(3)),
        Icon(Icons.brightness_1, size: pageIndex == 2 ? 13 : 6, color: Colors.white),
          ],
    ));
  }

  iconBackButton(){
    return Positioned(
      child: IconButton(icon: Icon(Icons.arrow_back_ios_sharp), 
      color: Colors.white,
      onPressed: (){
        Navigator.pop(context);
      }
      ),
      );
  }

  moveToScreen(){
    List <Item> ams = itemList.map((e) => e.name).toList(); 
    return Scaffold(
      body: ListView(
        children: ams,
      ),
    );
  }

  cartIconButton(){
    return Positioned(
      right: 10, top: 0,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => moveToScreen(),));
        },
        child: Stack(
      children: [
        IconButton(icon: Icon(Icons.shopping_cart_outlined), 
      color: Colors.black,
      onPressed: (){}
        ),
      Positioned(
        top: 6, right: 8,
        child: nmInIcon(),),
      ],
    )));
  }

  nmInIcon(){
    return Stack(
      children: [
         Icon(Icons.brightness_1_sharp, size: 15, color: Colors.blue),

         Positioned(
           top: 1, right: 3,
           child: Text("3", style: TextStyle(fontSize: 11, color: Colors.white),)),
      ],
    );
  }

  pageViewContents(String url){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
         image: NetworkImage(url)),
      ),
    );
  }

  bottomScreen(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Text(widget.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ],
        ),
        Padding(padding: EdgeInsets.only(top:10)),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Text('${widget.price}', style: TextStyle(fontSize: 20),)
          ],
        ),
        Padding(padding: EdgeInsets.only(top:20)),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Text("Color", )
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 15)),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 45)),
            GestureDetector(
            onTap: (){
              setState(() {
                      colorChoice = 0;       
                            });
            },
            child: Container(
              height: 20, width: 20,
              decoration: BoxDecoration(
                border: colorChoice == 0 ?
                Border.all(
                width: 2.0,
                style: BorderStyle.solid,
                color: Colors.blue,
                ) : null,
                color: Colors.blueGrey,
                shape: BoxShape.circle
              ),
            ),),
            SizedBox(width: 20,),
            GestureDetector(
            onTap: (){
              setState(() {
                      colorChoice = 1;       
                            });
            },
            child: Container(
              height: 20, width: 20,
              decoration: BoxDecoration(
                border: colorChoice == 1 ?
                Border.all(
                width: 2.0,
                style: BorderStyle.solid,
                color: Colors.blue,
                ) : null,
                color: Colors.black,
                shape: BoxShape.circle
              ),
            ),),
            SizedBox(width: 20,),
            GestureDetector(
            onTap: (){
              setState(() {
                      colorChoice = 2;       
                            });
            },
            child: Container(
              height: 20, width: 20,
              decoration: BoxDecoration(
                border: colorChoice == 2 ?
                Border.all(
                width: 2.0,
                style: BorderStyle.solid,
                color: Colors.blue,
                ) : null,
                color: Colors.blue,
                shape: BoxShape.circle
              ),
            ),),
          ],
        ),
        Padding(padding: EdgeInsets.only(top:20)),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Text("Size",)
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          children: [
        SizedBox(width: 20,),
        Container(
          height: 20,
          width: 370,
          color: Colors.grey[200],
          child: lineButton(),
        ),
        ]
        ),
        SizedBox(height: 20,),
        Row(
        children: [
          SizedBox(width: 20,),
          Container(
          width: 370,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
        child: TextButton(
          onPressed: () { 
            addToList(widget.imgUrl, widget.name, colorChoice, selected, widget.price);
            // setState(() {
               
            //   isPressed == false ?
            //   isPressed = true :
            //   isPressed = false;
            //             });
          },
          style: TextButton.styleFrom(
            elevation: 2.0,
            backgroundColor: Colors.blue,
          ),
          child: Text('Add to Cart', style: TextStyle(color: Colors.white
          ),)),
        ),
        ],),
        SizedBox(height: 10,),
      ],
    );
  }

  lineButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              selected = 'S';          
                        });
          },
          child: Container(
             width: 30, height: 70,
            child: Text("   S"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: selected == 'S' ? Colors.blue : Colors.grey[200],
            ),),
        ),
         GestureDetector(
          onTap: (){
            setState(() {
              selected = 'M';     
                        });
          },
          child: Container(
             width: 30, height: 70,
            child: Text("  M"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: selected == 'M' ? Colors.blue : Colors.grey[200],
            ),),
        ),
         GestureDetector(
          onTap: (){
            setState(() {
              selected = 'L';            
                        });
          },
          child: Container(
             width: 30, height: 70,
            child: Text("   L"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: selected == "L" ? Colors.blue : Colors.grey[200],
            ),),
        ),
         GestureDetector(
          onTap: (){
            setState(() {
              selected = 'XL';            
                        });
          },
          child: Container(
             width: 30, height: 70,
            child: Text("  XL"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: selected == 'XL' ? Colors.blue : Colors.grey[200],
            ),),
        ),
         GestureDetector(
          onTap: (){
            setState(() {
               selected = 'XXL';           
                        });
          },
          child: Container(
             width: 30, height: 70,
            child: Text(" XXL"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: selected == 'XXL' ? Colors.blue : Colors.grey[200],
            ),),
        ),
      ],
    );
  }

  AppBar _appBars(){
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      leading: 
        IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("My Cart", style: TextStyle(fontSize: 25, color: Colors.black),),
    );
  }

  Widget myCart(){
    return Scaffold(
      appBar: _appBars(),
    );
  }

  @override
  void initState() { 
    super.initState();  
  }

  @override
  void dispose() { 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [
         topScreen(),
         SizedBox(height: 10,),
         bottomScreen(),
       ],
     )
   );
  }
  
}