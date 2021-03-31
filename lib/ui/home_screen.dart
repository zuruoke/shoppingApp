import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/helper/pageTransition.dart';
import 'package:shopping_app/ui/cart_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white10,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 13),
        child: profileCircle(),
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {}),
      ],
    );
  }

  profileCircle() {
    return GestureDetector(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(
                    "https://support.hubstaff.com/wp-content/uploads/2019/08/good-pic-300x286.png"),
                fit: BoxFit.cover),
          ),
        ),
        onTap: () {});
  }

  topScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories", style: TextStyle(fontWeight: FontWeight.bold)),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://s3-eu-west-1.amazonaws.com/images.linnlive.com/60c6f3bc00d9a2bc73b617e0743b9d59/bbfc3c68-c968-4897-a57b-4b3fa1d6c453.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Men"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.pikpng.com/pngl/m/185-1858533_feminine-heel-shoe-svg-png-icon-free-download.png"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Women"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://opengameart.org/sites/default/files/styles/medium/public/psControllerColored.png"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Game"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLrFruviEbTWA0r2DKoBnXtAexRw8Gp_sJ9g&usqp=CAU"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Gadgets"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/80/666566/1.jpg?3745"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Shoe"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/80/666566/1.jpg?3745"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Shoe"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/80/666566/1.jpg?3745"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Shoe"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white24,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/80/666566/1.jpg?3745"),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Shoe"),
                      )
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }

  halfScreen() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best Selling', style: TextStyle(fontWeight: FontWeight.bold)),
            Text("See all")
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Row(
          children: [
            GestureDetector(
            onTap: (){
                  Navigator.of(context).push(
                    createRoute(
                      context, 
                    CartScreen(
                     imgUrl :"https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/80/666566/1.jpg?3745",
                     name: "Beoplay",
                     price: 755,
                  )));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/80/666566/1.jpg?3745"),
                          fit: BoxFit.cover)),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Text("Beoplay", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text("Band and Oleson"),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "£755",
                  style: TextStyle(
                      color: Colors.green[700], fontWeight: FontWeight.bold),
                ),
              ],
            ),),
            SizedBox(
              height: 230,
              width: 20,
            ),
            GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                    createRoute(
                      context, 
                    CartScreen(
                     imgUrl :"https://img10.joybuy.com/N0/s560x560_jfs/t1/116161/13/9449/170203/5ed9b867Ea90a3680/5aa9cd7e022d5c02.jpg.dpg",
                     name: "Beoplay",
                     price: 755,
                  )));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img10.joybuy.com/N0/s560x560_jfs/t1/116161/13/9449/170203/5ed9b867Ea90a3680/5aa9cd7e022d5c02.jpg.dpg"),
                          fit: BoxFit.cover)),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Text("Beoplay", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text("Band and Oleson"),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "£755",
                  style: TextStyle(
                      color: Colors.green[700], fontWeight: FontWeight.bold),
                ),
              ],
            ),),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) =>
                CartScreen(
                  imgUrl :"https://images-na.ssl-images-amazon.com/images/I/81Js6bnCtKL._AC_UL1500_.jpg",
                  name: "Beoplay",
                  price: 755
                )
              ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images-na.ssl-images-amazon.com/images/I/81Js6bnCtKL._AC_UL1500_.jpg"),
                          fit: BoxFit.cover)),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Text("Beoplay", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text("Band and Oleson"),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "£755",
                  style: TextStyle(
                      color: Colors.green[700], fontWeight: FontWeight.bold),
                ),
              ],
            ),),
            SizedBox(
              height: 230,
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images-na.ssl-images-amazon.com/images/I/61iyILyGjEL._AC_UL1002_.jpg"),
                          fit: BoxFit.cover)),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Text("Beoplay", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text("Band and Oleson"),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "£755",
                  style: TextStyle(
                      color: Colors.green[700], fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/80/666566/1.jpg?3745"),
                          fit: BoxFit.cover)),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Text("Beoplay", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text("Band and Oleson"),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "£755",
                  style: TextStyle(
                      color: Colors.green[700], fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 230,
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  width: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white24,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://ng.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/80/666566/1.jpg?3745"),
                          fit: BoxFit.cover)),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Text("Beoplay", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text("Band and Oleson"),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "£755",
                  style: TextStyle(
                      color: Colors.green[700], fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 15)),
            topScreen(),
            Padding(padding: EdgeInsets.only(top: 20)),
            halfScreen(),
          ],
        ),
      ),
    );
  }
  
}
