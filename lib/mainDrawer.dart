import 'package:flutter/material.dart';
import 'package:multi_restaurants_ui/catagories.dart';
import 'package:multi_restaurants_ui/settings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              width: 79,
              height: 79,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image:
                    DecorationImage(image: AssetImage('/images/profile.jpg.')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Title(
                color: Colors.deepOrange, child: Text('Name : Zahangir Alam')),
            Title(
                color: Colors.deepOrange,
                child: Text('Phone No : +8801979 888848')),

            SizedBox(
              height: 15,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.mail),
              title: Text('Order Items'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CatagoriesPage()));
              },
              leading: Icon(Icons.category_sharp),
              title: Text('Catagories'),
            ),

            ListTile(
              onTap: () {},
              leading: Icon(Icons.shopping_cart),
              title: Text('.Food Cart'),
            ),

            ListTile(
              onTap: () {},
              leading: Icon(Icons.food_bank),
              title: Text('Tranding Foods'),
            ),

            ListTile(
              onTap: () {},
              leading: Icon(Icons.map),
              title: Text('Address'),
            ),

            ListTile(
              onTap: () {},
              leading: Icon(Icons.contacts),
              title: Text('Contact Us'),
              trailing: Icon(Icons.help_center),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              leading: Icon(Icons.contacts),
              title: Text('Settings'),
              trailing: Icon(Icons.settings),
            ),

            ListTile(
              onTap: () {},
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
            ),

// Image.asset('/images/profile.jpg.'),
          ],
        ),
      ),
    );
  }
}
