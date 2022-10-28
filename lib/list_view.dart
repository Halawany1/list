import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  @override
  State<Test> createState() => _TestState();
}


 class _TestState extends State<Test> {
   var random;
    List<int> numbers = [Random().nextInt(100),Random().nextInt(100),Random().nextInt(100)
     ,Random().nextInt(100),Random().nextInt(100),Random().nextInt(100)];
   int index = 0;
  @override
  void initState(){
    numbers.sort();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (index <= 4) {
            setState(() {
              index++;
            });
          }
        },
        child: Text(
          'add',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0;i<=index;i++)
              Center(
                child: Padding(
                  padding: EdgeInsets.all(40.0),
                  child: Text(
                    "${numbers[i]}",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

