import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
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
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text('Zahangir ALam'),
                subtitle: Text('zahangiralamjp@gmial.com'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  children: [
                    ListTile(
                        title: Text('Profile Settings'),
                        leading: Icon(Icons.person),
                        trailing: Text('Edit')),

                    ////////////////////
                    ListTile(
                        title: Text('Full Name'),
                        trailing: Text('Zahangir Alam')),
                    ListTile(
                        title: Text('Email'),
                        trailing: Text('zahangiralamjp@gmao.com')),
                    ListTile(
                        title: Text('Phone No'),
                        trailing: Text('+8801979 888848')),
                    ListTile(
                        title: Text('Address'),
                        trailing: Text('Sharifpur, Jamalpur')),
                    ListTile(
                        title: Text('About'), trailing: Text('Onone Shopping')),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    ListTile(
                        title: Text('Payments Settings'),
                        leading: Icon(Icons.card_membership),
                        trailing: Text('Edit')),
                    ListTile(
                        title: Text('Language Settings'),
                        leading: Icon(Icons.language),
                        trailing: Text('Edit')),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
