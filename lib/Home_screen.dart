import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _State();
}

class _State extends State<HomeScreen> {
  bool isMale = true;
  bool isFemale = true;
  double height = 120.0;
  int weight = 50;
  int age = 18;
  late double total =
      weight / ((height / 100) * (height / 100));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0e21),
      appBar: AppBar(
        backgroundColor: Color(0xff080b20),
        foregroundColor: Colors.white,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isMale = !isMale;
                        isFemale = false;
                        setState(() {});
                      },
                      child: Container(
                        width: 175,
                        height: 175,
                        decoration: BoxDecoration(
                          color: Color(0xff111326),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: isMale ? Color(0xff202138) : Color(0xff111326),
                            width: 8,
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.male_outlined,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        isFemale = !isFemale;
                        isMale = false;
                        setState(() {});
                      },
                      child: Container(
                        width: 175,
                        height: 175,
                        decoration: BoxDecoration(
                          color: Color(0xff111326),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: isFemale ? Color(0xff202138) : Color(0xff111326),
                            width: 8,
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.female_outlined,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color(0xff202138),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Text(
                        '${height.toInt()}',
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Slider(
                        value: height,
                        min: 100,
                        max: 220,
                        activeColor: Color(0xffef1760),
                        inactiveColor: Color(0xff505266),
                        thumbColor: Color(0xffef1760),
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 175,
                      height: 175,
                      decoration: BoxDecoration(
                        color: Color(0xff202138),
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: Column(
                        children: [
                          Text(
                            'weight',
                            style: TextStyle(fontSize: 30, color: Colors.white30),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(fontSize: 45, color: Colors.white),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Color(0xff4c4f5e),
                                    size: 50,
                                  ),
                                ),
                                SizedBox(width: 2,),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Color(0xff4c4f5e),
                                    size: 50 ,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 175,
                      height: 175,
                      decoration: BoxDecoration(
                        color: Color(0xff202138),
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: Column(
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(fontSize: 30, color: Colors.white30),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(fontSize:45, color: Colors.white),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Color(0xff4c4f5e),
                                    size: 50,
                                  ),
                                ),
                                SizedBox(width:5),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Color(0xff4c4f5e),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 150,),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondScreen(bmi: total)));


              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffef1760),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}