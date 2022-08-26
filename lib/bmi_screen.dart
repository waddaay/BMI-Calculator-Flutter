import 'dart:math';

import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

const BaColor = Color(0xFF090e21);
const PrimaryColor = Color(0xFF1d1e33);
const SecondaryColor = Color(0xFF111328);
const RedColor = Color(0xFFeb1555);
const TextColor = Color(0xFF4b4f5b);

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 183;
  int age = 22;
  int weight = 62;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaColor,
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: BaColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isMale ? PrimaryColor : SecondaryColor,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 100,
                                color: Colors.white,
                              ),
                              //SizedBox(height: 10,),
                              Text(
                                "MALE",
                                style:
                                    TextStyle(color: TextColor, fontSize: 20),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        isMale = false;
                      });
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isMale ? SecondaryColor : PrimaryColor,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                              color: Colors.white,
                            ),
                            //SizedBox(height: 10,),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                color: TextColor,
                                fontSize: 20,
                              ),
                            ),
                          ]),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(color: TextColor, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.round().toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 220,
                        min: 80,
                        activeColor: Colors.white,
                        inactiveColor: TextColor,
                        thumbColor: RedColor,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(color: TextColor, fontSize: 20),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "weight-",
                                onPressed: () {
                                  setState(() {
                                    if (weight != 1) weight--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                                backgroundColor: TextColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                heroTag: "weight+",
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                                backgroundColor: TextColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(color: TextColor, fontSize: 20),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "age-",
                                onPressed: () {
                                  setState(() {
                                    if (age != 1) age--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                                backgroundColor: TextColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              FloatingActionButton(
                                heroTag: "age+",
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                                backgroundColor: TextColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(
                          weight / pow(height/100, 2)
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: RedColor,
                      //borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
