import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget{

  @override

  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State <WalletScreen> {

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
                    image: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/81Js6bnCtKL._AC_UL1500_.jpg"))
                ),
              ),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Zuruoke", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('Okafor'),
                  SizedBox(height: 20,),
                   Text("Zuruoke", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
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