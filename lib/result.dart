import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';

const BaColor = Color(0xFF090e21);
const PrimaryColor = Color(0xFF1d1e33);
const SecondaryColor = Color(0xFF111328);
const RedColor = Color(0xFFeb1555);
const TextColor = Color(0xFF4b4f5b);

String Normal =  "You have a normal body weight.\nGood job!";
String OverWeight = "You have a more than normal body weight.\ntry to do more Exercices";
String UnderWeight = "You have a lower than normal body weight.\ntry to eat more";

class Result extends StatelessWidget {
  final double result;
  Result(this.result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: BaColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        color: BaColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 40,
                bottom: 20,
              ),
              child: Text(
                "Your Result",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: 390,
                decoration: BoxDecoration(
                  color: PrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      result < 18.5 ? "UNDERWEIGHT" : result >= 18.5 && result <= 25? "NORMAL" : "OVERWEIGHT",
                      style: TextStyle(
                        color: result >= 18.5 && result <= 25? Colors.green : Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      result.toStringAsFixed(2),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 100,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Normal BMI range:",
                      style: TextStyle(
                        color: TextColor,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "18.5 - 25 kg/m2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      result < 18.5 ? UnderWeight : result >= 18.5 && result <= 25? Normal : OverWeight,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("SAVE RESULT"),
                      style: ElevatedButton.styleFrom(
                        primary: TextColor,
                        fixedSize: Size(150, 45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: Container(
                  decoration: BoxDecoration(
                    color: RedColor,
                  ),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "RE-CALCULATE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
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
