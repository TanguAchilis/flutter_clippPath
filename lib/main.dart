import 'package:flutter/material.dart';
import 'package:flutter_clippath/header_image.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'flutter curves',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=>_MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:ListView(
        children:[
          Stack(
            children: <Widget>[
              HeaderImage(),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child:HeaderImage2(), 
              ),

              Positioned(
                bottom: 90,
                left: 100,

                child: Column(
                  children: <Widget>[

                    Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
                      child: FloatingActionButton(child: Icon(Icons.priority_high),backgroundColor: Color.fromRGBO(236, 154, 156, 1),),
                    ),


                    Padding(
                      padding:EdgeInsets.fromLTRB(0, 10, 0, 8),
                      child: Text('Wrong', style:TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
                    ),


                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                      child: Text('try again with code', style: TextStyle(color:Colors.white, fontSize: 12,fontWeight: FontWeight.w600),),),



                    RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      color:Colors.white,
                      onPressed: ()=>{print('error')},
                      textColor: Colors.red,
                      padding: EdgeInsets.fromLTRB(90, 0, 90, 0),
                      child:Text('back') ,),
                  ],
                ),
              )
            ],
          ),
           
        ]
       
    ));
  }
}