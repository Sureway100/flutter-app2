import 'package:flutter/material.dart';

import 'package:secondapp/widgets/nav-drawer.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  //this is called a state object (instance of the state)
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    //this scafford takes in appbars as properties
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        //so the appbar will be flat and not floating, use elevation
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              // this checks for new values and override, rebuilding the object state
              ninjalevel += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800]),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sacred.jpg'),
                radius: 40.0,
              ),
            ),
            //add a divider libe (Hr in web dev) between your prof pix and body
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            //create empty box to get space(creating space between two widgets)
            SizedBox(height: 10.0),
            Text(
              'DAVID SUREWAY',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),

            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            //create empty box to get space(creating space between two widgets)
            SizedBox(height: 10.0),
            Text(
              '$ninjalevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                //create space between two row widgets
                SizedBox(width: 10.0),
                Text(
                  'davidsureway40@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}










//4.50