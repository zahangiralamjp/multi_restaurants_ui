import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:multi_restaurants_ui/mainDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///////////// bottomNavigationBar /////////////////////////////

  //////////////// bottomNavigationBar //////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.login)),
        ],
      ),
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search For restaurants or foods',
                  ),
                ),
                //// Heading Text
                ListTile(
                  leading: Icon(
                    Icons.subway_sharp,
                    size: 40,
                  ),
                  title: Text(
                    'Top Restaurants',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Wow and amazing food items'),
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MainSlider('images/a.jpg'),
                      SizedBox(
                        width: 15,
                      ),
                      MainSlider('images/b.jpg'),
                      SizedBox(
                        width: 15,
                      ),
                      MainSlider('images/c.jpg'),
                      SizedBox(
                        width: 15,
                      ),
                      MainSlider('images/d.jpg'),
                      SizedBox(
                        width: 15,
                      ),
                      MainSlider('images/a.jpg'),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                ///////////////////
                ListTile(
                  leading: Icon(
                    Icons.trending_up,
                    size: 35,
                  ),
                  title: Text('Trending This Week'),
                  subtitle:
                      Text('Double Click on the food to add t to the cart'),
                ),
                SizedBox(
                  width: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SliderMini('images/d.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/c.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/b.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/a.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/b.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/c.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/d.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/a.jpg'),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),

                //// Best Sell ////////////////////////////
                ListTile(
                  leading: Icon(
                    Icons.trending_up,
                    size: 35,
                  ),
                  title: Text('Best Sell This Week'),
                  subtitle:
                      Text('Double Click on the food to add t to the cart'),
                ),
                SizedBox(
                  width: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SliderMini('images/a.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/b.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/c.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/d.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/a.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/c.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/b.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                      SliderMini('images/c.jpg'),
                      SizedBox(
                        width: 7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
      drawer: MainDrawer(),

      //////// bottomNavigationBar /////////////////////////////
      // bottomNavigationBar: MyBottomNavigationBar(),
      ////////////////////////////////////////////////////////
    );
  }
}

Widget SliderMini(image) {
  return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 180,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 5,
                  top: 5,
                  child: Container(
                    width: 70,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'BDT 99',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text('American Fide'),
              subtitle: Text('The is usa Foods item.'),
            ),
          ),
        ],
      ));
}
////////////////////////////

Widget MainSlider(image) {
  return Container(
    width: 350,
    height: 270,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        Container(
          width: 350,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
        ),
        Container(
          width: 350,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: ListTile(
            title: Text('Home Cooking Expending'),
            subtitle: Text('Hello programming world'),
            trailing: Icon(
              Icons.local_activity,
              size: 50,
            ),
          ),
        ),
      ],
    ),
  );
}
