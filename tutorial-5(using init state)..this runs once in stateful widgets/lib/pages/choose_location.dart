import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    //this fires ones the state is built
    print('init statement is running');
  }

  @override
  Widget build(BuildContext context) {
    //this fires everytime the setState function is used
    print('init statement is running2');
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('choose new location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: RaisedButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Text('counter is  $counter'),
        ));
  }
}
