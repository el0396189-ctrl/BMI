import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key,required this.bmi});
final bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Color(0xff0a0e21),
      appBar: AppBar(
        backgroundColor: Color(0xff080b20),
        foregroundColor: Colors.white,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
          children: [
            Text(
              "Your BMI is ${bmi.toStringAsFixed(1)}",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight:FontWeight.bold),
            ),
          ],
      ),
    );
  }
}
