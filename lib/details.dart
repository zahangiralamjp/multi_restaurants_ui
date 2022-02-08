import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'images/c.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          right: 10,
                          top: 10,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.shop,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text('Pizza Margherita'),
                  trailing: Text('BDT 230'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Mar Sonar Bangla ami tomSonar Bangla ami tomai balobasi, Mar Sonar Bangla ami tomai balobasi, Mar Sonar Bangla ami tomai balobasi, Mar Sonar Bangla ami tomai balobasi, '),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.check_box),
                  title: Text('Offer'),
                  subtitle: Text('Select Offer favred food item!'),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Extra'),
                  subtitle: Text('Select extra to add then one the food!'),
                  trailing: Text('BDT 1.00'),
                ),
                SizedBox(
                  height: 15,
                ),
                Positioned(
                  bottom: 5,
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          child: Container(
                            alignment: Alignment.center,
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                                // color: Colors.amber,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 5,
                          child: Container(
                            width: 400,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Add to Cart        -     BDT 50.00',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),

                            /*
ListTile(
                                title: Text('Add to Cart'),
                                trailing: Text('BDT 50.00'),
                              ),
                            */
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
