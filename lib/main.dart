import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: SelfCard(),
    ));

class SelfCard extends StatefulWidget {
  @override
  _SelfCardState createState() => _SelfCardState();
}

class _SelfCardState extends State<SelfCard> {

  int skillLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Self ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            skillLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/me.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10),
            Text(
              'ANURADHA',
              style: TextStyle(color: Colors.amberAccent[200], letterSpacing: 2.0,fontSize: 28.0,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              'CURRENT SKILL LEVEL',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(height: 10),
            Text(
              '$skillLevel',
              style: TextStyle(color: Colors.amberAccent[200], letterSpacing: 2.0,fontSize: 28.0,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'anurnasinghe151@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
