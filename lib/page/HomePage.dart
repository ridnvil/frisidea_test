import 'package:flutter/material.dart';
import 'package:frisidea_test/model/ModelUser.dart';
import 'package:frisidea_test/page/ProfilePage.dart';
import 'package:frisidea_test/provider/UserProvider.dart';
import 'package:provider/provider.dart';

import 'CalculatorPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frisidea Test'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => CalculatorPage(),
              ));
            },
            child: Card(
              child: Center(child: Text("Calculator")),
            ),
          ),
          GestureDetector(
            onTap: () {
              // ModelUser modelUser = Provider.of<UserProvider>(context, listen: false).getUser();
              // print(modelUser.github);
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ProfilePage(),
              ));
            },
            child: Card(
              child: Center(child: Text("Profile")),
            ),
          )
        ],
      ),
    );
  }
}
