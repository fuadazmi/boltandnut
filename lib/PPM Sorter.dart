import 'package:boltandnut/LoginPage.dart';
import 'package:boltandnut/SubmitForm1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'PPM MUL.dart';
import 'constant.dart';
import 'SubmitForm3.dart';
import 'ListofLabel.dart';
import 'PPMLine.dart';
import 'SitePatrolLine.dart';
import 'SitePatrolMul.dart';


class Home3 extends StatefulWidget {
  @override
  _HomeState3 createState() => _HomeState3();
}

class _HomeState3 extends State<Home3> {
  TextEditingController textFieldController = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  int screen = 1;


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
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Comment'),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text('Review'),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Recent'),
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
                    label: 'PPM Line Inspection',
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
                    label: 'PPM MUL/ICD Inspection',
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
                    label: 'PPM Sorter Inspection',
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
                    label: 'Site Patrol Line',
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
                    label: 'Site Patrol MUL/ICD',
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: <Widget>[
                    Text(
                      title[2],
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
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
                      _sendDataToSecondScreen(context);
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

  void _sendDataToSecondScreen(BuildContext context) {
    String textToSend2 = textFieldController2.text;
    String textToSend = textFieldController.text;
    DateTime currentDate = _MyHomePageState.currentDate;
    String dropdownValue = _MyStatefulWidgetState.dropdownValue;
    bool valueToSend1 = _MyStatefulWidgetStates._isSelected1;
    bool valueToSend2 = _MyStatefulWidgetStates._isSelected2;
    bool valueToSend3 = _MyStatefulWidgetStates._isSelected3;
    bool valueToSend4 = _MyStatefulWidgetStates._isSelected4;
    bool valueToSend5 = _MyStatefulWidgetStates._isSelected5;
    bool valueToSend6 = _MyStatefulWidgetStates._isSelected6;
    bool valueToSend7 = _MyStatefulWidgetStates._isSelected7;
    bool valueToSend8 = _MyStatefulWidgetStates._isSelected8;
    bool valueToSend9 = _MyStatefulWidgetStates._isSelected9;


    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SubmitForm3(
            text: textToSend,
            text2: textToSend2,
            taskName: 'PPM Sorter Inspection',
            currentDate:
            '${currentDate.year}.${currentDate.month}.${currentDate.day}',
            dropdownValue: dropdownValue,
            valueToSend1: valueToSend1,
            valueToSend2: valueToSend2,
            valueToSend3: valueToSend3,
            valueToSend4: valueToSend4,
            valueToSend5: valueToSend5,
            valueToSend6: valueToSend6,
            valueToSend7: valueToSend7,
            valueToSend8: valueToSend8,
            valueToSend9: valueToSend9,
          ),
        ));
  }
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