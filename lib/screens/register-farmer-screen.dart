import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class RegisterFarmerScreen extends StatefulWidget {
  const RegisterFarmerScreen({Key? key}) : super(key: key);

  @override
  State<RegisterFarmerScreen> createState() => _RegisterFarmerScreenState();
}

class _RegisterFarmerScreenState extends State<RegisterFarmerScreen> {
  String dropdownValue = 'Select gender *';
  String dropdownDistrictValue = 'Select district *';
  String dropdownCultivationsValue = 'Select cultivation(add more later) *';
  List<String> districts = [
    'Select district *',
    'Colombo',
    'Gampaha',
    'Kalutara',
    'Kandy',
    'Matale',
    'Nuwara Eliya',
    'Galle',
    'Matara',
    'Hambantota',
    'Jaffna',
    'Kilinochchi',
    'Mannar',
    'Vavuniya',
    'Mullaitivu',
    'Batticaloa',
    'Ampara',
    'Trincomalee',
    'Kurunegala',
    'Puttalam',
    'Anuradhapura',
    'Polonnaruwa',
    'Badulla',
    'Moneragala',
    'Ratnapura',
    'Kegalle'
  ];
  List<String> cultivations = [
    'Select cultivation(add more later) *',
    'Paddy',
    'Tomatoe',
    'Cabbage',
    'Corn'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
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
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, bottom: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),   
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter full name',
                  labelText: 'Full Name *',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter prefered username',
                  labelText: 'Username *',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.alternate_email),
                  hintText: 'Enter email address',
                  labelText: 'Email *',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward),
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>["Select gender *", "Male", "Female"]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.contact_phone),
                  hintText: 'Enter mobile number',
                  labelText: 'Mobile *',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.map),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownDistrictValue,
                      icon: Icon(Icons.arrow_downward),
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownDistrictValue = newValue!;
                        });
                      },
                      items: districts.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.food_bank),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownCultivationsValue,
                      icon: Icon(Icons.arrow_downward),
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownCultivationsValue = newValue!;
                        });
                      },
                      items: cultivations.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 10.0, right: 30.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: "By signing up, you’re agree to our ",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms and Conditions ',
                        style: TextStyle(fontSize: 15, color: Colors.green),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      TextSpan(
                        text: 'privacy policy',
                        style: TextStyle(fontSize: 15, color: Colors.green),
                      )
                    ]
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(18.0)),
                  ),
                  onPressed: () {},
                  child: Text('Register',
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Already Greenpath? ',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
