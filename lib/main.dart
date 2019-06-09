import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       title: "My App",
      home: new HomePage());
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String mydata ="Hello World";
   void _changeText()
   {
     setState(() {
       if(mydata.startsWith("H")){
         mydata = "Welcome to my world";
       }
       else
         {
           mydata ="Hello World";
         }
     });
   }

  Widget _bodywidget()
  {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(mydata),
            new RaisedButton(
                child: new Text("Click"),
                onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home Page"),
      ),
      body: _bodywidget(),);
  }
}
