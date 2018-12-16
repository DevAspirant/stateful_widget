import 'package:flutter/material.dart';

void main(){
  runApp(application());
}

class application extends StatefulWidget{
  @override
    _applicationState createState() => new _applicationState();
  }

  // ignore: expected_class_member
  class _applicationState extends State<application>{
    String txt = '';

    @override
    void initState(){
      txt = 'Click to the button';
      super.initState();
    }

    void method1(){
      setState(() {
        txt = 'The button has been changed';
      });
    }

    @override
    Widget build(BuildContext context){
      return new MaterialApp(
      title: 'stateful widget',
      home: new Scaffold(
      body: new Center(
      child: new RaisedButton(onPressed: (){method1();}, child: new Text(txt),),
  )
  )
  );
  }
  }
