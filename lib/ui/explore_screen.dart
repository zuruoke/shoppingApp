import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/helper/scroll_animation.dart';

class ExploreScreen extends StatefulWidget{
  
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
} 

class _ExploreScreenState extends State<ExploreScreen> {

  String url = "https://i.pinimg.com/originals/d9/db/11/d9db11953a2d185d37246bb1f500c957.png";


  topScreen(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Explore', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        SizedBox(width: 230,),
        Icon(Icons.notifications_none_rounded, size: 30),
        SizedBox(width: 25,),
        Icon(Icons.send_sharp, size: 30,)
      ],
    );
  }

  textInBox(){
    return Stack(
      children: [
        Container(
          height: 30, width: 90,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Positioned(
          top: 5, left: 10,
          child: Text("Best Seller")
          ),
      ],
    );
  }

  secondScreen(){
    return Stack(
      children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.rectangle,
          ),
        ),
        Positioned(
          top: 40,  left: 20,
          child: textInBox(),
          ),
        Positioned(
          top: 90,  left: 20,
          child: Text("Beats By Solo Dr Dre")
          ),
          Positioned(
          top: 110,  left: 20,
          child: Text("Wireless"),
          ),
          Positioned(
          top: 140,  left: 20,
          child: Text("24.90€", style: TextStyle(fontSize: 22),)
          ), 
          Positioned(
            left: 250, top: 0,
            child: Image.network(url), 
                    height: 200, width: 130),
          ],
    );
  }

  thirdScreen(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Text("Popular Deals", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          Text('See all'),
          ],
        ),
        Padding(padding: EdgeInsets.only(top:20)),
        LeftToRight(child: 
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 140, width: 120,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                image: DecorationImage(
                  image: NetworkImage('https://lh3.googleusercontent.com/proxy/t2wzJUJKr5HggK6xIkcQ5Mdqj54k89inOwJzcoWRX2ituZnh4_cSc4jDC_Ewy6E3_VSjLMtoW9Y8F5-UlGE690sxn4ppj74wmgYefNZ0lO4q061c0V0VP-4kPuI1IHbjRQJcx7IM0Qnsfig'),
                  fit: BoxFit.cover)
                ),
            ),
            Padding(padding: EdgeInsets.only(top:15)),
            Text("MINISO Collection"),
            Padding(padding: EdgeInsets.only(top:8)),
            Text("£75", style: TextStyle(color: Colors.purple[700] ,fontWeight: FontWeight.bold),),
            ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 140, width: 120,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                image: DecorationImage(
                  image: NetworkImage('https://media.self.com/photos/5b88555e19143808feb3f844/master/pass/headphones.jpg'),
                  fit: BoxFit.cover)
                ),
            ),
            Padding(padding: EdgeInsets.only(top:15)),
            Text("NFL Collection"),
            Padding(padding: EdgeInsets.only(top:8)),
            Text("£69", style: TextStyle(color: Colors.purple[700] ,fontWeight: FontWeight.bold),),
            ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 140, width: 120,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                image: DecorationImage(
                  image: NetworkImage('https://image.freepik.com/free-photo/headphones-dark-black-background_68747-106.jpg'),
                  fit: BoxFit.cover)
                ),
            ),
            Padding(padding: EdgeInsets.only(top:15)),
            Text("The NBA Collection"),
            Padding(padding: EdgeInsets.only(top:8)),
            Text("£150", style: TextStyle(color: Colors.purple[700] ,fontWeight: FontWeight.bold),),
            ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 140, width: 120,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                image: DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/originals/e4/e5/52/e4e5528aef800bc64f21b98438c6c37b.jpg'),
                  //https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5McGEfSFDLDn49op7Q3sRi2fBvcPuDwCk7w&usqp=CAU
                  fit: BoxFit.cover)
                ),
            ),
            Padding(padding: EdgeInsets.only(top:15)),
            Text("NFL Collection"),
            Padding(padding: EdgeInsets.only(top:8)),
            Text("£105", style: TextStyle(color: Colors.purple[700] ,fontWeight: FontWeight.bold),),
            ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 140, width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://image.freepik.com/free-photo/black-wireless-headphones-isolated-black-background_95544-15.jpg'),
                  fit: BoxFit.cover)
                ),
            ),
            Padding(padding: EdgeInsets.only(top:15)),
            Text("NFL Collection"),
            Padding(padding: EdgeInsets.only(top:8)),
            Text("£105", style: TextStyle(color: Colors.purple[700] ,fontWeight: FontWeight.bold),),
            ],
              ),
            ],
          ),
        ),),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.brightness_1, size:12, color: Colors.grey,),
            Icon(Icons.brightness_1, size:12),
            Icon(Icons.brightness_1, size:12, color: Colors.grey),
          ],
        )
      ],
    );
  }

  fourthScreen(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Text("Best Sellers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          Text('See all'),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        LeftToRight(child: 
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg'),
                        fit: BoxFit.cover)
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Erik's Shop")
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              Column(
                children: [
                  Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://sincerelyvictoriat.com/wp-content/uploads/2019/11/round-profile-picture-1.png'),
                        fit: BoxFit.cover)
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Kim's Shop")
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              Column(
                children: [
                  Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://www.mockofun.com/wp-content/uploads/2019/12/circle-profile-pic.jpg'),
                        fit: BoxFit.cover)
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Gary's Shop")
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              Column(
                children: [
                  Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://www.nicepng.com/png/full/182-1829287_cammy-lin-ux-designer-circle-picture-profile-girl.png'),
                        fit: BoxFit.cover)
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Si Npig's Shop")
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              Column(
                children: [
                  Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://www.pngitem.com/pimgs/m/404-4042710_circle-profile-picture-png-transparent-png.png'),
                        fit: BoxFit.cover)
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Kim's Shop")
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              Column(
                children: [
                  Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://www.mockofun.com/wp-content/uploads/2019/12/circle-photo.jpg'),
                        fit: BoxFit.cover)
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text("Kim's Shop")
                ],
              ),
            ],
          ),
        )),
      ],
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:10, left: 15, right: 15, bottom: 10),
          child: ListView(
          children: [
            topScreen(),
            Padding(padding: EdgeInsets.only(top: 25)),
            secondScreen(),
            Padding(padding: EdgeInsets.only(top: 30)),
            thirdScreen(),
            Padding(padding: EdgeInsets.only(top: 30)),
            fourthScreen(),
          ],
        ),
      ),
    );
   
  }
  
}