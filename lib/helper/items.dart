import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget{

final String imgUrl;
final String name;
final int color;
final String size;
final int price; 

Item(
  this.imgUrl,
  this.name,
  this.color,
  this.size,
  this.price
);

@override
_ItemState createState() => _ItemState();
}

class _ItemState extends State <Item>{

  AppBar _appBar(){
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
          children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100, width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                width: 1.0, color: Colors.blueGrey
                ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(widget.imgUrl))
                ),
              ),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('- ${widget.size}'),
                  SizedBox(height: 20,),
                   Text("${widget.price}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          ],
          
          ),
        )),
    );
  }
}