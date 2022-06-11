import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:greenpath_20/widgets/navigation-drawer-widget.dart';

class DashboardFarmerScreen extends StatefulWidget {
  static const routeName = '/dashboard-farmer';

  const DashboardFarmerScreen({Key? key}) : super(key: key);

  @override
  State<DashboardFarmerScreen> createState() => _DashboardFarmerScreenState();
}

class _DashboardFarmerScreenState extends State<DashboardFarmerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.green, size: 30.0),
      ),
      drawer: NavigationDrawyerWidget(),
      body: Container(
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
                      "Dashboard",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
