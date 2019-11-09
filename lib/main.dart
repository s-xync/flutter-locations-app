import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.red),
                child: Text("one"),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.green),
                child: Text("two"),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("three"),
              )
            ]))));
