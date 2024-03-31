import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBMIApp extends StatefulWidget {
  const MyBMIApp({super.key});

  @override
  State<MyBMIApp> createState() => _MyBMIAppState();
}

double height = 20;
int age = 0;
int weight = 0;
bool ismale = true;

class _MyBMIAppState extends State<MyBMIApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text("BMI Calculater"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  //Female Container
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      ismale = false;
                      setState(() {});
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          boxShadow: ismale == false
                              ? [box_shadowSelected()]
                              : [
                                  box_shadowNotSelected(),
                                ],
                          color: Colors.indigo,
                          border: Border.all(color: Colors.amber, width: 3),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          Text(
                            "♀",
                            style: TextStyle(color: Colors.white, fontSize: 90),
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  //Male Container
                  child: InkWell(
                    onTap: () {
                      ismale = true;
                      setState(() {});
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          boxShadow: ismale == true
                              ? [box_shadowSelected()]
                              : [
                                  box_shadowNotSelected(),
                                ],
                          color: Colors.indigo,
                          border: Border.all(color: Colors.amber, width: 3),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          Text(
                            "♂",
                            style: TextStyle(color: Colors.white, fontSize: 90),
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Human length Slider
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    border: Border.all(color: Colors.amber, width: 3),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w200),
                    ),
                    Text(
                      "${height.round()} cm",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                    Slider(
                        activeColor: Colors.amber,
                        label: "Length",
                        inactiveColor: Colors.white,
                        max: 300,
                        min: 10,
                        value: height,
                        onChanged: (double ff) {
                          height = ff;
                          setState(() {});
                        }),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  //age select Container
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        border: Border.all(color: Colors.amber, width: 3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Weight",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            "$weight",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  if (weight < 200) {
                                    weight++;
                                  } else {
                                    weight = weight;
                                  }
                                  setState(() {});
                                },
                                backgroundColor: Colors.amber,
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.grey.shade700,
                                  opticalSize: 50,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  if (weight > 0) {
                                    weight--;
                                  } else {
                                    weight = weight;
                                  }
                                  setState(() {});
                                },
                                backgroundColor: Colors.amber,
                                child: Icon(
                                  Icons.remove,
                                  size: 40,
                                  color: Colors.grey.shade700,
                                  opticalSize: 50,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  //age select Container
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        border: Border.all(color: Colors.amber, width: 3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Age",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  if (age < 100) {
                                    age++;
                                  } else {
                                    age = age;
                                  }
                                  setState(() {});
                                },
                                backgroundColor: Colors.amber,
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.grey.shade700,
                                  opticalSize: 50,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  if (age > 0) {
                                    age--;
                                  } else {
                                    age = age;
                                  }
                                  setState(() {});
                                },
                                backgroundColor: Colors.amber,
                                child: Icon(
                                  Icons.remove,
                                  size: 40,
                                  color: Colors.grey.shade700,
                                  opticalSize: 50,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(color: Colors.indigo, width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //calculate buton
                  child: MaterialButton(
                    child: const Text(
                      "Calculate Now",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 35,
                          fontWeight: FontWeight.w900),
                    ),
                    onPressed: () {
                      double resault = weight / pow(height / 100, 2);

                      showDialog(
                          barrierDismissible: false,
                          useSafeArea: true,
                          context: context,
                          builder: (_) => AlertDialog(
                                elevation: 50,
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Close"))
                                ],
                                shadowColor: Colors.amber,
                                backgroundColor: Colors.indigo,
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "${resault.roundToDouble()}",
                                      style: const TextStyle(
                                          color: Colors.amber,
                                          fontSize: 60,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      classification(resault),
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.amber,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                title: const Text("BMI Resaults"),
                                icon: const Icon(Icons.calculate),
                              ));
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

box_shadowSelected() {
  return const BoxShadow(
    color: Colors.amber,
    spreadRadius: 2,
    blurStyle: BlurStyle.solid,
    blurRadius: 7,
  );
}

box_shadowNotSelected() {
  return const BoxShadow(
    color: Colors.amber,
    spreadRadius: 0,
    blurStyle: BlurStyle.solid,
    blurRadius: 0,
  );
}

String classification(double bmi) {
  if (bmi < 16) {
    return "Severe Thinness";
  } else if (bmi == 16 || bmi == 17) {
    return "Moderate Thinness";
  } else if (bmi > 17 && bmi < 18.5) {
    return "Mild Thinness";
  } else if (bmi > 18.5 && bmi < 25) {
    return "Normal";
  } else if (bmi >= 25 && bmi < 30) {
    return "Overweight";
  } else if (bmi >= 30 && bmi <= 35) {
    return "Obese Class I";
  } else if (bmi > 35 && bmi <= 40) {
    return "Obese Class I";
  } else {
    return "Obese Class I";
  }
}
