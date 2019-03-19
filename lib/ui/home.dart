import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
      }
      
    }
    
class HomeState extends State<Home> {

  int radioValue = 0;

  void handleRadioValueChange(int value) {
     setState(() {
       radioValue = value;

       print(radioValue);
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight on Planet X'),
        backgroundColor: Colors.black45,
        centerTitle: true,
      ),

      // Body Background
      backgroundColor: Colors.lightBlueAccent,
      
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: const EdgeInsets.all(15.0),
          children: <Widget>[
            Image.asset('images/planet.png',
            height: 133.0,
            width: 200.0,
            ),

            Container(
              margin: const EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[

                  TextField(
                    controller: null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Your Weight on Earth.',
                      hintText: 'In Pounds',
                      icon: Icon(Icons.person_outline)
                    ),
                  ),

                  Padding(padding: EdgeInsets.all(5.0)),

                  // Add three radio buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //radio buttons
                      Radio<int>(
                        activeColor: Colors.brown,
                        value: 0, groupValue: radioValue, onChanged: handleRadioValueChange),
                      Text(
                        'Pluto',
                        style: TextStyle(color: Colors.white)
                      ),

                      Radio<int>(
                        activeColor: Colors.redAccent,
                        value: 1, groupValue: radioValue, onChanged: handleRadioValueChange),
                        Text(
                        'Mars',
                        style: TextStyle(color: Colors.white)
                      ),

                      Radio<int>(
                        activeColor: Colors.orangeAccent,
                        value: 2, groupValue: radioValue, onChanged: handleRadioValueChange),
                        Text(
                        'Venus',
                        style: TextStyle(color: Colors.white)
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.all(20.0)),
                  //Result Text
                  Text(
                    'Hello There',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.5,
                      fontWeight: FontWeight.w500
                    ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
      
}
