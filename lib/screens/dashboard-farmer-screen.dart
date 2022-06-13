import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:greenpath_20/widgets/item-card-widget.dart';
import 'package:greenpath_20/widgets/navigation-drawer-widget.dart';
import 'package:greenpath_20/widgets/nearby-business-card-widget.dart';
import 'package:greenpath_20/widgets/weather-card-widget.dart';

class DashboardFarmerScreen extends StatefulWidget {
  static const routeName = '/dashboard-farmer';

  const DashboardFarmerScreen({Key? key}) : super(key: key);

  @override
  State<DashboardFarmerScreen> createState() => _DashboardFarmerScreenState();
}

class _DashboardFarmerScreenState extends State<DashboardFarmerScreen> {
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
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green, size: 30.0),
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
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Dashboard",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
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
                      Container(
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25.0, bottom: 10.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: ItemCardWidget(
                                    routename: 'paddy-item',
                                    image: Image.asset(
                                      'assets/images/paddy.png',
                                      fit: BoxFit.cover,
                                    ),
                                    name: 'Paddy'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: ItemCardWidget(
                                    routename: 'tomatoe-item',
                                    image: Image.asset(
                                      'assets/images/tomatoe.png',
                                      fit: BoxFit.cover,
                                    ),
                                    name: 'Tomatoe'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: ItemCardWidget(
                                    routename: 'cabbage-item',
                                    image: Image.asset(
                                      'assets/images/cabbage.png',
                                      fit: BoxFit.cover,
                                    ),
                                    name: 'Cabbage'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          side: BorderSide(color: Colors.green)),
                                      elevation: 5,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.green,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, bottom: 10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Weather Forecast",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: WeatherCardWidget()),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, bottom: 10.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Nearby Businesses",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
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
