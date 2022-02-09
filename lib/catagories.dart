import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:multi_restaurants_ui/mainDrawer.dart';

import 'home.dart';

class CatagoriesPage extends StatelessWidget {
  const CatagoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catagories',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black26,
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search For restaurants or foods',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.list_sharp),
                  title: Text('Vagetables'),
                  trailing: Icon(Icons.view_agenda),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /////////////////////////////////////////////////////
                        Row(
                          children: [
                            SliderCatagories('images/a.jpg'),
                            SizedBox(
                              width: 10,
                            ),
                            SliderCatagories('images/b.jpg'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        /////////////////////////
                        Row(
                          children: [
                            SliderCatagories('images/c.jpg'),
                            SizedBox(
                              width: 10,
                            ),
                            SliderCatagories('images/d.jpg'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //////////////////////////
                        Row(
                          children: [
                            SliderCatagories('images/c.jpg'),
                            SizedBox(
                              width: 10,
                            ),
                            SliderCatagories('images/a.jpg'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: [
                            SliderCatagories('images/c.jpg'),
                            SizedBox(
                              width: 10,
                            ),
                            SliderCatagories('images/b.jpg'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: [
                            SliderCatagories('images/c.jpg'),
                            SizedBox(
                              width: 10,
                            ),
                            SliderCatagories('images/a.jpg'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: [
                            SliderCatagories('images/d.jpg'),
                            SizedBox(
                              width: 10,
                            ),
                            SliderCatagories('images/c.jpg'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        ///
                        ///
                        //////////////////////////////////////////
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
      drawer: MainDrawer(),
    );
  }
}
///////////////////////////

Widget SliderCatagories(image) {
  return Container(
      width: 220,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            width: 220,
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
                  right: 10,
                  top: 10,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 220,
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
