import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
      }
      
    }
    
class HomeState extends State<Home> {
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
