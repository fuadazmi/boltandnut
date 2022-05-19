// import 'package:boltandnut/LoginPage.dart';
// import 'package:boltandnut/SubmitForm.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'PPM MUL.dart';
// import 'constant.dart';
// import 'ListofLabel.dart';
// import 'PPMLine.dart';
// import 'PPM Sorter.dart';
// import 'SitePatrolMul.dart';
//
//
// class Home4 extends StatefulWidget {
//   @override
//   _HomeState4 createState() => _HomeState4();
// }
//
// class _HomeState4 extends State<Home4> {
//   TextEditingController textFieldController = TextEditingController();
//   TextEditingController textFieldController2 = TextEditingController();
//   int screen = 1;
//
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepOrange,
//         elevation: 0,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.deepOrange,
//               ),
//               child: Text(
//                 'BHSKlia2',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.message),
//               title: Text('Comment'),
//             ),
//             ListTile(
//               leading: Icon(Icons.check_box),
//               title: Text('Review'),
//             ),
//             ListTile(
//               leading: Icon(Icons.history),
//               title: Text('Recent'),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Header(size: size),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Stack(
//                   children: [
//                     Text(
//                       'Today Task',
//                       style:
//                       TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   MyCard(
//                     onTaps: () {
//                       screen = 1;
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Home()),
//                       );
//                     },
//                     childIcon: Image.asset('images/ConveyorLine.png'),
//                     label: 'PPM Line Inspection',
//                   ),
//                   MyCard(
//                     onTaps: () {
//                       screen = 2;
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Home2()),
//                       );
//                     },
//                     childIcon: Image.asset('images/MUL.png'),
//                     label: 'PPM MUL/ICD Inspection',
//                   ),
//                   MyCard(
//                     onTaps: () {
//                       screen = 3;
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Home3()),
//                       );
//                     },
//                     childIcon: Image.asset('images/Sorter.png'),
//                     label: 'PPM Sorter Inspection',
//                   ),
//                   MyCard(
//                     onTaps: () {
//                       screen = 4;
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Home4()),
//                       );
//                     },
//                     childIcon: Image.asset('images/ConveyorLine.png'),
//                     label: 'Site Patrol Line',
//                   ),
//                   MyCard(
//                     onTaps: () {
//                       screen = 5;
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Home5()),
//                       );
//                     },
//                     childIcon: Image.asset('images/MUL.png'),
//                     label: 'Site Patrol MUL/ICD',
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Stack(
//                   children: <Widget>[
//                     Text(
//                       title[3],
//                       style: TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 MyStatefulWidget(),
//                 Spacer(),
//                 //calendar
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10.0),
//                   child: MyHomePage(),
//                 ),
//               ],
//             ),
//             Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.deepOrange,
//                 border: Border.all(
//                     color: Colors.orange, // set border color
//                     width: 3.0), // set border width
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(20.0)), // set rounded corner radius
//               ),
//               child: TextFormField(
//                 controller: textFieldController,
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(),
//                   filled: true,
//                   hintText: 'Enter the subsystem',
//                   labelText: 'Subsystem',
//                 ),
//                 maxLines: 1,
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.deepOrange,
//                 border: Border.all(
//                     color: Colors.orange, // set border color
//                     width: 3.0), // set border width
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(20.0)), // set rounded corner radius
//               ),
//               child: TextFormField(
//                 controller: textFieldController2,
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(),
//                   filled: true,
//                   hintText: 'Remark/Recommendation',
//                   labelText: 'Remarks',
//                 ),
// //                onSaved: (String value) {
// //                  var description = value;
// //                },
// //                onChanged: (value) {
// //                  var description = value;
// //                },
//                 maxLines: 3,
//               ),
//             ),
//             Checkboxs(),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20),
//               child: Container(
//                 height: 30,
//                 margin: EdgeInsets.symmetric(horizontal: 30),
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(
//                         (0.5),
//                       ),
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(50),
//                   color: Colors.deepOrange,
//                 ),
//                 child: Center(
//                   child: GestureDetector(
//                     onTap: () {
//                       _sendDataToSecondScreen(context);
//
//                     },
//                     child: Text(
//                       'Submit',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _sendDataToSecondScreen(BuildContext context) {
//     String textToSend2 = textFieldController2.text;
//     String textToSend = textFieldController.text;
//     DateTime currentDate = _MyHomePageState.currentDate;
//     String dropdownValue = _MyStatefulWidgetState.dropdownValue;
//     bool valueToSend1 = _MyStatefulWidgetStates._isSelected1;
//     bool valueToSend2 = _MyStatefulWidgetStates._isSelected2;
//     bool valueToSend3 = _MyStatefulWidgetStates._isSelected3;
//     bool valueToSend4 = _MyStatefulWidgetStates._isSelected4;
//     bool valueToSend5 = _MyStatefulWidgetStates._isSelected5;
//     bool valueToSend6 = _MyStatefulWidgetStates._isSelected6;
//     bool valueToSend7 = _MyStatefulWidgetStates._isSelected7;
//     bool valueToSend8 = _MyStatefulWidgetStates._isSelected8;
//     bool valueToSend9 = _MyStatefulWidgetStates._isSelected9;
//
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => SubmitForm(
//             text: textToSend,
//             text2: textToSend2,
//             taskName: 'Site Patrol Line',
//             currentDate:
//             '${currentDate.year}.${currentDate.month}.${currentDate.day}',
//             dropdownValue: dropdownValue,
//             valueToSend1: valueToSend1,
//             valueToSend2: valueToSend2,
//             valueToSend3: valueToSend3,
//             valueToSend4: valueToSend4,
//             valueToSend5: valueToSend5,
//             valueToSend6: valueToSend6,
//             valueToSend7: valueToSend7,
//             valueToSend8: valueToSend8,
//             valueToSend9: valueToSend9,
//           ),
//         ));
//   }
// }
//
// //my card
//
// class MyCard extends StatelessWidget {
//   MyCard({this.onTaps, this.childIcon, this.label});
//
//   Widget childIcon;
//   String label;
//   Function onTaps;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTaps,
//       child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             childIcon,
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Text(label),
//             ),
//           ],
//         ),
//         margin: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.deepOrange,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(
//                 (0.5),
//               ),
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         height: 100,
//         width: 100,
//       ),
//     );
//   }
// }
//
// //checkbox
//
// class LabeledCheckbox extends StatelessWidget {
//   const LabeledCheckbox({
//     Key key,
//     @required this.label,
//     @required this.padding,
//     @required this.value,
//     @required this.onChanged,
//     this.labelChild,
//   }) : super(key: key);
//
//   final String label;
//   final EdgeInsets padding;
//   final bool value;
//   final Function onChanged;
//   final String labelChild;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         onChanged(value);
//       },
//       child: Padding(
//         padding: padding,
//         child: Container(
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: Colors.deepOrange,
//             border: Border.all(
//               color: Colors.orange, // set border color
//               width: 3.0,
//             ), // set border width
//             borderRadius: BorderRadius.all(
//                 Radius.circular(20.0)), // set rounded corner radius
//           ),
//           child: Column(
//             children: [
//               Row(
//                 children: <Widget>[
//                   Expanded(
//                       child: Text(
//                         label,
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                   Checkbox(
//                     value: value,
//                     onChanged: (bool newValue) {
//                       onChanged(newValue);
//                     },
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                       child: Text(
//                         labelChild,
//                         style: TextStyle(fontSize: 12),
//                       )),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// /// This is the stateful widget that the main application instantiates.
// class Checkboxs extends StatefulWidget {
//   const Checkboxs({Key key}) : super(key: key);
//
//   @override
//   _MyStatefulWidgetStates createState() => _MyStatefulWidgetStates();
// }
//
// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetStates extends State<Checkboxs> {
//   static bool _isSelected1 = true;
//   static bool _isSelected2 = true;
//   static bool _isSelected3 = true;
//   static bool _isSelected4 = true;
//   static bool _isSelected5 = true;
//   static bool _isSelected6 = true;
//   static bool _isSelected7 = true;
//   static bool _isSelected8 = true;
//   static bool _isSelected9 = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         LabeledCheckbox(
//           label: checkbox1[0],
//           labelChild: labelChild1[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected1,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected1 = newValue;
//             });
//           },
//         ),
//         LabeledCheckbox(
//           label: checkbox2[0],
//           labelChild: labelChild2[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected2,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected2 = newValue;
//             });
//           },
//         ),
//         LabeledCheckbox(
//           label: checkbox3[0],
//           labelChild: labelChild3[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected3,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected3 = newValue;
//             });
//           },
//         ),
//         LabeledCheckbox(
//           label: checkbox4[0],
//           labelChild: labelChild4[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected4,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected4 = newValue;
//             });
//           },
//         ),
//         LabeledCheckbox(
//           label: checkbox5[0],
//           labelChild: labelChild5[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected5,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected5 = newValue;
//             });
//           },
//         ),
//         LabeledCheckbox(
//           label: checkbox6[0],
//           labelChild: labelChild6[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected6,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected6 = newValue;
//             });
//           },
//         ),
//         LabeledCheckbox(
//           label: checkbox7[0],
//           labelChild: labelChild7[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected7,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected7 = newValue;
//             });
//           },
//         ),
//         LabeledCheckbox(
//           label: checkbox8[0],
//           labelChild: labelChild8[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected8,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected8 = newValue;
//             });
//           },
//         ),
//         LabeledCheckbox(
//           label: checkbox9[0],
//           labelChild: labelChild9[0],
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           value: _isSelected9,
//           onChanged: (bool newValue) {
//             setState(() {
//               _isSelected9 = newValue;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
//
// //shift
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key key}) : super(key: key);
//
//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }
//
// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   static String dropdownValue = 'Alpha';
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 20),
//       alignment: Alignment.bottomLeft,
//       child: DropdownButton<String>(
//         value: dropdownValue,
//         icon: const Icon(Icons.arrow_downward),
//         iconSize: 24,
//         elevation: 16,
//         style: const TextStyle(
//             color: Colors.deepOrange,
//             fontWeight: FontWeight.bold,
//             fontSize: 25),
//         underline: Container(
//           height: 2,
//           color: Colors.deepOrangeAccent,
//         ),
//         onChanged: (String newValue) {
//           setState(() {
//             dropdownValue = newValue;
//           });
//         },
//         items: <String>['Alpha', 'Bravo', 'Charlie', 'Delta']
//             .map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
//
// //calendar
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   static DateTime currentDate = DateTime.now();
//
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime pickedDate = await showDatePicker(
//         context: context,
//         builder: (BuildContext context, Widget child) {
//           return Theme(
//             data: ThemeData.dark().copyWith(
//               colorScheme: ColorScheme.dark(
//                 primary: Colors.deepOrange,
//                 onPrimary: Colors.white,
//                 surface: Colors.deepOrange,
//                 onSurface: Colors.black,
//               ),
//               dialogBackgroundColor: Colors.orange,
//             ),
//             child: child,
//           );
//         },
//         initialDate: currentDate,
//         firstDate: DateTime(2015),
//         lastDate: DateTime(2050));
//     if (pickedDate != null && pickedDate != currentDate)
//       setState(() {
//         currentDate = pickedDate;
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Text(
//             'Date: ${currentDate.year}.${currentDate.month}.${currentDate.day}',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Container(
//             height: 30,
//             width: 150,
//             child: FlatButton(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//               color: Colors.deepOrange,
//               onPressed: () => _selectDate(context),
//               child: Text('Select date'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// //header
// class Header extends StatelessWidget {
//   const Header({
//     Key key,
//     @required this.size,
//   }) : super(key: key);
//
//   final Size size;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       height: size.height * 0.2,
//       child: Stack(
//         children: [
//           Container(
//             padding: EdgeInsets.only(left: 20, right: 20),
//             height: size.height * 0.2 - 27,
//             decoration: BoxDecoration(
//               color: Colors.deepOrange,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(60),
//               ),
//             ),
//             child: Row(
//               children: [
//                 Text(
//                   'Hi Technician!',
//                   style: Theme.of(context).textTheme.headline5.copyWith(
//                       color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//                 Spacer(),
//                 Hero(
//                     tag: 'logo',
//                     child: Image.asset('images/MalaysiaAirports.png',
//                         cacheWidth: 120)),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               height: 54,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 10),
//                     blurRadius: 50,
//                     color: Colors.deepOrange.withOpacity(0.23),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: TextField(
//                         onChanged: (value) {},
//                         decoration: InputDecoration(
//                           hintText: "Search",
//                           hintStyle: TextStyle(
//                             color: Colors.black.withOpacity(0.5),
//                           ),
//                           enabledBorder: InputBorder.none,
//                           focusedBorder: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.build),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'PPM MUL.dart';
import 'package:boltandnut/constant.dart';
import 'package:boltandnut/ListofLabel.dart';
import 'PPM Sorter.dart';
import 'SitePatrolMul.dart';
import 'SitePatrolLine.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:boltandnut/SubmitForm.dart';
import 'PPMLine.dart';
import 'PPM Sorter.dart';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'constant.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

final _firestore = FirebaseFirestore.instance;

class Home4 extends StatefulWidget {
  @override
  _HomeState4 createState() => _HomeState4();
}

class _HomeState4 extends State<Home4> {
  TextEditingController textFieldController = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  int screen = 1;

  // titles (){
  //   int screens;
  //   String taskTitle;
  //
  //   if (screen == 1){
  //     taskTitle = title[0];
  //   }
  //   else if (screen==2){
  //     taskTitle = title[1];
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text(
                'BHSKlia2',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            // ListTile(
            //   leading: Icon(Icons.message),
            //   title: Text('Comment'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.check_box),
            //   title: Text('Review'),
            // ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Recent'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Submit()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(size: size),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Text(
                      'Today Task',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCard(
                    onTaps: () {
                      screen = 1;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    childIcon: Image.asset('images/ConveyorLine.png'),
                    label: title[0],
                  ),
                  MyCard(
                    onTaps: () {
                      screen = 2;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home2()),
                      );
                    },
                    childIcon: Image.asset('images/MUL.png'),
                    label:title[1],
                  ),
                  MyCard(
                    onTaps: () {
                      screen = 3;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home3()),
                      );
                    },
                    childIcon: Image.asset('images/Sorter.png'),
                    label: title[2],
                  ),
                  MyCard(
                    onTaps: () {
                      screen = 4;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home4()),
                      );
                    },
                    childIcon: Image.asset('images/ConveyorLine.png'),
                    label: title[3],
                  ),
                  MyCard(
                    onTaps: () {
                      screen = 5;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home5()),
                      );
                    },
                    childIcon: Image.asset('images/MUL.png'),
                    label:title[4],
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: <Widget>[
                    Text(title[3],
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
              ),
            ),
            Row(
              children: [
                MyStatefulWidget(),
                Spacer(),
                //calendar
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: MyHomePage(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                border: Border.all(
                    color: Colors.orange, // set border color
                    width: 3.0), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(20.0)), // set rounded corner radius
              ),
              child: TextFormField(
                controller: textFieldController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  filled: true,
                  hintText: 'Enter the subsystem',
                  labelText: 'Subsystem',
                ),
                maxLines: 1,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                border: Border.all(
                    color: Colors.orange, // set border color
                    width: 3.0), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(20.0)), // set rounded corner radius
              ),
              child: TextFormField(
                controller: textFieldController2,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  filled: true,
                  hintText: 'Remark/Recommendation',
                  labelText: 'Remarks',
                ),
//                onSaved: (String value) {
//                  var description = value;
//                },
//                onChanged: (value) {
//                  var description = value;
//                },
                maxLines: 3,
              ),
            ),
            Checkboxs(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 30,
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                        (0.5),
                      ),
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepOrange,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      String textToSend2 = textFieldController2.text;
                      String textToSend = textFieldController.text;
                      DateTime currentDate = _MyHomePageState.currentDate;
                      String dropdownValue =
                          _MyStatefulWidgetState.dropdownValue;
                      bool valueToSend1 = _MyStatefulWidgetStates._isSelected1;
                      bool valueToSend2 = _MyStatefulWidgetStates._isSelected2;
                      bool valueToSend3 = _MyStatefulWidgetStates._isSelected3;
                      bool valueToSend4 = _MyStatefulWidgetStates._isSelected4;
                      bool valueToSend5 = _MyStatefulWidgetStates._isSelected5;
                      bool valueToSend6 = _MyStatefulWidgetStates._isSelected6;
                      bool valueToSend7 = _MyStatefulWidgetStates._isSelected7;
                      bool valueToSend8 = _MyStatefulWidgetStates._isSelected8;
                      bool valueToSend9 = _MyStatefulWidgetStates._isSelected9;
                      String taskName = 'Site Patrol Line';

                      _firestore.collection('variable').add({
                        'text': textToSend,
                        'text2': textToSend2,
                        'currentDate': currentDate,
                        'dropdownValue': dropdownValue,
                        'valueToSend1': valueToSend1,
                        'valueToSend2': valueToSend2,
                        'valueToSend3': valueToSend3,
                        'valueToSend4': valueToSend4,
                        'valueToSend5': valueToSend5,
                        'valueToSend6': valueToSend6,
                        'valueToSend7': valueToSend7,
                        'valueToSend8': valueToSend8,
                        'valueToSend9': valueToSend9,
                        'taskName' : taskName,
                      });

                      // onPressed();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Submit()),
                      );
                      // _sendDataToSecondScreen(context);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// void onPressed() async {
//   final data = await _firestore.collection("variable").get();
//   for (var data in data.docs) {
//     print(data.data()['text']);
//     print(data.data()['currentDate']);
//   }
// }

//  onPressed() {
//   _firestore.collection("variable").get().then((querySnapshot) {
//     querySnapshot.docs.forEach((result) {
//       final text = result.data()['text'];
//       final submit = Submit(text: text);
//     });
//   });
// }

// void _sendDataToSecondScreen(BuildContext context) {
//   String textToSend2 = textFieldController2.text;
//   String textToSend = textFieldController.text;
//   DateTime currentDate = _MyHomePageState.currentDate;
//   String dropdownValue = _MyStatefulWidgetState.dropdownValue;
//   bool valueToSend1 = _MyStatefulWidgetStates._isSelected1;
//   bool valueToSend2 = _MyStatefulWidgetStates._isSelected2;
//   bool valueToSend3 = _MyStatefulWidgetStates._isSelected3;
//   bool valueToSend4 = _MyStatefulWidgetStates._isSelected4;
//   bool valueToSend5 = _MyStatefulWidgetStates._isSelected5;
//   bool valueToSend6 = _MyStatefulWidgetStates._isSelected6;
//   bool valueToSend7 = _MyStatefulWidgetStates._isSelected7;
//   bool valueToSend8 = _MyStatefulWidgetStates._isSelected8;
//   bool valueToSend9 = _MyStatefulWidgetStates._isSelected9;
//
//
//   Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => SubmitForm(
//           text: textToSend,
//           text2: textToSend2,
//           taskName: 'PPM Line Inspection',
//           currentDate:
//               '${currentDate.year}.${currentDate.month}.${currentDate.day}',
//           dropdownValue: dropdownValue,
//           valueToSend1: valueToSend1,
//           valueToSend2: valueToSend2,
//           valueToSend3: valueToSend3,
//           valueToSend4: valueToSend4,
//           valueToSend5: valueToSend5,
//           valueToSend6: valueToSend6,
//           valueToSend7: valueToSend7,
//           valueToSend8: valueToSend8,
//           valueToSend9: valueToSend9,
//         ),
//       ));
// }
}

//my card

class MyCard extends StatelessWidget {
  MyCard({this.onTaps, this.childIcon, this.label});

  Widget childIcon;
  String label;
  Function onTaps;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTaps,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            childIcon,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(label),
            ),
          ],
        ),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(
                (0.5),
              ),
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: 100,
      ),
    );
  }
}

//checkbox

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key key,
    @required this.label,
    @required this.padding,
    @required this.value,
    @required this.onChanged,
    this.labelChild,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;
  final String labelChild;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Padding(
        padding: padding,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            border: Border.all(
              color: Colors.orange, // set border color
              width: 3.0,
            ), // set border width
            borderRadius: BorderRadius.all(
                Radius.circular(20.0)), // set rounded corner radius
          ),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        label,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Checkbox(
                    value: value,
                    onChanged: (bool newValue) {
                      onChanged(newValue);
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                        labelChild,
                        style: TextStyle(fontSize: 12),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class Checkboxs extends StatefulWidget {
  const Checkboxs({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetStates createState() => _MyStatefulWidgetStates();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetStates extends State<Checkboxs> {
  static bool _isSelected1 = true;
  static bool _isSelected2 = true;
  static bool _isSelected3 = true;
  static bool _isSelected4 = true;
  static bool _isSelected5 = true;
  static bool _isSelected6 = true;
  static bool _isSelected7 = true;
  static bool _isSelected8 = true;
  static bool _isSelected9 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabeledCheckbox(
          label: checkbox1[0],
          labelChild: labelChild1[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected1,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected1 = newValue;
            });
          },
        ),
        LabeledCheckbox(
          label: checkbox2[0],
          labelChild: labelChild2[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected2,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected2 = newValue;
            });
          },
        ),
        LabeledCheckbox(
          label: checkbox3[0],
          labelChild: labelChild3[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected3,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected3 = newValue;
            });
          },
        ),
        LabeledCheckbox(
          label: checkbox4[0],
          labelChild: labelChild4[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected4,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected4 = newValue;
            });
          },
        ),
        LabeledCheckbox(
          label: checkbox5[0],
          labelChild: labelChild5[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected5,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected5 = newValue;
            });
          },
        ),
        LabeledCheckbox(
          label: checkbox6[0],
          labelChild: labelChild6[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected6,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected6 = newValue;
            });
          },
        ),
        LabeledCheckbox(
          label: checkbox7[0],
          labelChild: labelChild7[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected7,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected7 = newValue;
            });
          },
        ),
        LabeledCheckbox(
          label: checkbox8[0],
          labelChild: labelChild8[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected8,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected8 = newValue;
            });
          },
        ),
        LabeledCheckbox(
          label: checkbox9[0],
          labelChild: labelChild9[0],
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected9,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected9 = newValue;
            });
          },
        ),
      ],
    );
  }
}

//shift
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static String dropdownValue = 'Alpha';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      alignment: Alignment.bottomLeft,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
            fontSize: 25),
        underline: Container(
          height: 2,
          color: Colors.deepOrangeAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Alpha', 'Bravo', 'Charlie', 'Delta']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

//calendar
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: Colors.deepOrange,
                onPrimary: Colors.white,
                surface: Colors.deepOrange,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.orange,
            ),
            child: child,
          );
        },
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Date: ${currentDate.year}.${currentDate.month}.${currentDate.day}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 30,
            width: 150,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.deepOrange,
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
            ),
          ),
        ],
      ),
    );
  }
}

//header
class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Hi Technician!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Hero(
                    tag: 'logo',
                    child: Image.asset('images/MalaysiaAirports.png',
                        cacheWidth: 120)),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.deepOrange.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.build),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////
class Submit extends StatelessWidget {
  Submit({this.text});

  @required
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recently Added'),
      ),
      body: FutureBuilder(
          future: _firestore.collection("variable").get(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: Text('Loading'),
              );
            }
            final data = snapshot.data.docs.reversed;

            List<Post> dataWidgets = [];

            for (var data in data) {
              final text = data.data()['text'];
              final currentDate = data.data()['currentDate'].toDate();
              final dropdownValue = data.data()['dropdownValue'];
              final text2 = data.data()['text2'];
              final valueToSend1 = data.data()['valueToSend1'];
              final valueToSend2 = data.data()['valueToSend2'];
              final valueToSend3 = data.data()['valueToSend3'];
              final valueToSend4 = data.data()['valueToSend4'];
              final valueToSend5 = data.data()['valueToSend5'];
              final valueToSend6 = data.data()['valueToSend6'];
              final valueToSend7 = data.data()['valueToSend7'];
              final valueToSend8 = data.data()['valueToSend8'];
              final valueToSend9 = data.data()['valueToSend9'];
              final taskName = data.data()['taskName'];

              final dataWidget = Post(
                text: text,
                currentDate: currentDate,
                dropdownValue: dropdownValue,
                text2: text2,
                valueToSend1: valueToSend1,
                valueToSend2: valueToSend2,
                valueToSend3: valueToSend3,
                valueToSend4: valueToSend4,
                valueToSend5: valueToSend5,
                valueToSend6: valueToSend6,
                valueToSend7: valueToSend7,
                valueToSend8: valueToSend8,
                valueToSend9: valueToSend9,
                taskName : taskName,
              );
              dataWidgets.add(dataWidget);
            }
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: dataWidgets,
                ),
              ),
            );
          }),
    );
  }
}

class Post extends StatelessWidget {
  Post({
    Key key,
    @required this.text,
    this.currentDate,
    this.dropdownValue,
    this.text2,
    this.valueToSend1,
    this.valueToSend2,
    this.valueToSend3,
    this.valueToSend4,
    this.valueToSend5,
    this.valueToSend6,
    this.valueToSend7,
    this.valueToSend8,
    this.valueToSend9,
    this.taskName,
  }) : super(key: key);

  final text;
  final currentDate;
  final dropdownValue;
  final text2;
  final valueToSend1;
  final valueToSend2;
  final valueToSend3;
  final valueToSend4;
  final valueToSend5;
  final valueToSend6;
  final valueToSend7;
  final valueToSend8;
  final valueToSend9;
  final taskName;

  final pdf = pw.Document();

  writeOnPdf() async {
    final header = ['Parts', 'Check'];

    final parts = [
      Part(parts: checkbox1[0], check: valueToSend1 ? 'done' : 'have issue'),
      Part(parts: checkbox2[0], check: valueToSend2 ? 'done' : 'have issue'),
      Part(parts: checkbox3[0], check: valueToSend3 ? 'done' : 'have issue'),
      Part(parts: checkbox4[0], check: valueToSend4 ? 'done' : 'have issue'),
      Part(parts: checkbox5[0], check: valueToSend5 ? 'done' : 'have issue'),
      Part(parts: checkbox6[0], check: valueToSend6 ? 'done' : 'have issue'),
      Part(parts: checkbox7[0], check: valueToSend7 ? 'done' : 'have issue'),
      Part(parts: checkbox8[0], check: valueToSend8 ? 'done' : 'have issue'),
      Part(parts: checkbox9[0], check: valueToSend9 ? 'done' : 'have issue'),
    ];

    final data = parts.map((part) => [part.parts, part.check]).toList();

    final imageJpg = (await rootBundle.load('images/MalaysiaAirports.jpg'))
        .buffer
        .asUint8List();

    pdf.addPage(pw.MultiPage(
        maxPages: 1,
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return <pw.Widget>[
            pw.Image(pw.MemoryImage(imageJpg), width: 120),
            pw.Header(
                level: 1,
                child: pw.Text(
                    'Baggage Handling System T2, MA(SEPANG) SDN BHD                                                            '
                        'Date: ${currentDate.year}-${currentDate.month}-${currentDate.day}  ${currentDate.hour}:${currentDate.minute}',
                    style: pw.TextStyle(fontWeight: pw.FontWeight.bold))),
            pw.Header(level: 2, child: pw.Text('PPM Inspection Check Sheet')),
            pw.Paragraph(
                text: '$taskName Subsystem $text done by shift $dropdownValue'),
            pw.Table.fromTextArray(
              headers: header,
              data: data,
              cellAlignment: pw.Alignment.center,
              headerDecoration: pw.BoxDecoration(
                color: PdfColors.grey300,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Paragraph(text: 'Remarks : $text2')
          ];
        }));
    return saveDocument(name: 'CheckSheet.pdf', pdf: pdf);
  }

  static Future<File> saveDocument({
    @required String name,
    @required pw.Document pdf,
  }) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepOrange,
      child: ListTile(
        leading: IconButton(
          icon: Icon(Icons.picture_as_pdf),
          onPressed: () async {
            final pdfFile = await writeOnPdf();
            await saveDocument(name: 'CheckSheet.pdf', pdf: pdf);
            await openFile(pdfFile);
          },
        ),
        title: Text(
          taskName,
          style: TextStyle(fontSize: 15),
        ),
        subtitle: Text('Subsystem $text | Shift $dropdownValue'),
        trailing:
        Text('${currentDate.year}.${currentDate.month}.${currentDate.day}'),
      ),
    );
  }
}

class Part {
  final String parts;
  final String check;

  Part({@required this.parts, @required this.check});
}