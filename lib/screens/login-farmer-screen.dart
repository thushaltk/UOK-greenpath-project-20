import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LoginFarmerScreen extends StatefulWidget {
  const LoginFarmerScreen({Key? key}) : super(key: key);

  @override
  State<LoginFarmerScreen> createState() => _LoginFarmerScreenState();
}

class _LoginFarmerScreenState extends State<LoginFarmerScreen> {
  late FocusNode myNode;

  @override
  void initState() {
    super.initState();
    myNode = new FocusNode();
  }

  @override
  void dispose() {
    myNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: BackButton(
                color: Colors.black,
                onPressed: () {},
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              'assets/images/farmer.png',
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 30.0),
            child: TextFormField(
              focusNode: myNode,
              decoration: InputDecoration(
                icon: Icon(Icons.alternate_email),
                hintText: 'Enter email address',
                labelText: 'Email *',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 30.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'Enter password',
                labelText: 'Password *',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
          SizedBox(
            height: 65,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 30.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(18.0)),
                ),
                onPressed: () {},
                child: Text('Login',
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}