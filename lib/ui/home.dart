import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
      }
      
    }
    
class HomeState extends State<Home> {
  
  final TextEditingController _weightController = TextEditingController();

  int radioValue = 0;
  double  _finalResult = 0.0;
  String _formattedText = '';

  void handleRadioValueChange(int value) {
     setState(() {
       radioValue = value;

       switch(radioValue) {
         case 0:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _formattedText = 'Your weight on Mars is ${_finalResult.toStringAsFixed(1)}';
          break;
        case 1:
          _finalResult = calculateWeight(_weightController.text, 0.06);
          _formattedText = 'Your weight on Pluto is ${_finalResult.toStringAsFixed(1)}';
          break;
        case 2:
          _finalResult = calculateWeight(_weightController.text, 0.91);
          _formattedText = 'Your weight on Venus is ${_finalResult.toStringAsFixed(1)}';
          break;
          
                 }
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
                              controller: _weightController,
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
                                // Radio Buttons
                                Radio<int>(
                                  activeColor: Colors.redAccent,
                                  value: 0, groupValue: radioValue, onChanged: handleRadioValueChange),
                                  Text(
                                  'Mars',
                                  style: TextStyle(color: Colors.white)
                                ),
          
                                Radio<int>(
                                  activeColor: Colors.brown,
                                  value: 1, groupValue: radioValue, onChanged: handleRadioValueChange),
                                Text(
                                  'Pluto',
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
                              _weightController.text.isEmpty ? 'Please enter weight.' : '$_formattedText lbs',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.5,
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
          
            double calculateWeight(String weight, double multiplier) {
              if (int.parse(weight).toString().isNotEmpty && int.parse(weight) > 0) {
                return int.parse(weight) * multiplier;
              } else {
                print('Wrong');

                return int.parse('180') * 0.38;
              }
            }
      
}
