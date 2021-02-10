import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final student = Student();
  final student = Student(name: 'Ahmad', age: 27).obs;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Management',
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text("Name is ${student.value.name}",
                  style: TextStyle(fontSize: 26))),
              SizedBox(
                height: 20,
              ),
              TextButton(
                child: Text('Uperr'),
                onPressed: () {
                  // student.value.name = student.value.name.toUpperCase();
                  // if entire class is obserbable then
                  student.update((student) {
                    student.name = student.name.toString().toUpperCase();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
