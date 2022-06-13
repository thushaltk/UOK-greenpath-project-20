import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:greenpath_20/widgets/condition-card-widget.dart';
import 'package:greenpath_20/widgets/navigation-drawer-widget.dart';

import '../widgets/nearby-business-card-widget.dart';

class CultivationScreen extends StatefulWidget {
  static const routeName = '/cultivation-screen';
  //final Image image;
  //final String name;

  const CultivationScreen({Key? key}) : super(key: key);

  @override
  State<CultivationScreen> createState() => _CultivationScreenState();
}

class _CultivationScreenState extends State<CultivationScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Text(
              'Jayasumana D',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 50,
            child: Image.asset(
              'assets/images/profile.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black, size: 30.0),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 13),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: BottomNavigationBar(
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.green), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message, color: Colors.green),
                  label: 'Messages'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.map, color: Colors.green),
                  label: 'Location'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.green),
                  label: 'Account'),
            ],
          ),
        ),
      ),
      drawer: NavigationDrawyerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 180,
                  child: Image.asset(
                    'assets/images/paddy-big.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Stack(alignment: Alignment.centerLeft, children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      color: Colors.black54,
                    ),
                    width: double.infinity,
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Paddy',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 38.0),
                    ),
                  )
                ]),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25.0, bottom: 10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Conditions",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: ConditionCardWidget()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: ConditionCardWidget()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: ConditionCardWidget()),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25.0, bottom: 10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Interested Businesses",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: NearbyBusinessCardWidget(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: NearbyBusinessCardWidget(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: NearbyBusinessCardWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
