import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen()
    );
  }
}


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Color _containerColor = Colors.red;
  double nilaiMatrix4 = -0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: false,
        title: Text(
          "FirstScreen",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 10, 9, 9),
              )
            )
          ],
          leading: IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.menu),
          ),
      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                transform: Matrix4.rotationZ(nilaiMatrix4),
                height: 100,
                width: 200,
                margin: EdgeInsets.all(48),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.green, width: 3, strokeAlign: BorderSide.strokeAlignInside),
                  borderRadius: BorderRadius.circular(10),
                  color: _containerColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(3, 6),
                      blurRadius: 8
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hello World 1", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                    Text("Hello World 2")
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.all(16),
                    child: IconButton(
                      onPressed:(){
                        setState(() {
                          _containerColor = Colors.green;
                          nilaiMatrix4 = (nilaiMatrix4.isNegative)? (nilaiMatrix4 = nilaiMatrix4.abs()) : (nilaiMatrix4 = -nilaiMatrix4);
                        });
                      },
                      icon: Icon(Icons.thumb_up,color: Colors.green,)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          _containerColor = Colors.red;
                          nilaiMatrix4 = (nilaiMatrix4.isNegative)? (nilaiMatrix4 = nilaiMatrix4.abs()) : (nilaiMatrix4 = -nilaiMatrix4);
                        });
                      }, 
                      icon: Icon(Icons.thumb_down,color: Colors.red,)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          _containerColor = Colors.blue;
                          nilaiMatrix4 = (nilaiMatrix4.isNegative)? (nilaiMatrix4 = nilaiMatrix4.abs()) : (nilaiMatrix4 = -nilaiMatrix4);
                        });
                      }, 
                      icon: Icon(Icons.share,color: Colors.blue,)
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({Key? key, required this.text}):super(key: key);

  @override
  State<BiggerText> createState() => __BiggerTextState();
}

class __BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize),),
        ElevatedButton(
          onPressed: (){
            setState(() {
              _textSize++;
            });
          }, child: Text("Zoom"))
      ],
    );
  }
}