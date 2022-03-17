import 'dart:convert';

import 'package:parsing_ujikom/sample_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parsing_ujikom/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: profilePage(),
    );
  }
}

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  Future _loadSampleJson() async {
    String jsonString = await rootBundle.loadString("assets/sample.json");
    final jsonData = json.decode(jsonString);
    Sample sample = Sample.fromJson(jsonData);
    setState(() {
      // _jsonContent = sample.toString();
      _name = sample.name.toString();
      _age = sample.age.toString();
      _gender = sample.gender.toString();
      _hobi = sample.hobi.toString();
      _github = sample.github.toString();
      _articles = sample.articles.toString();
      _contact = sample.contact.toString();
    });
  }

  // late String _jsonContent = "";
  late String _name = "";
  late String _age = "";
  late String _gender = "";
  late String _hobi = "";
  late String _github = "";
  late String _articles = "";
  late String _contact = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Json'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _loadSampleJson();
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: const Text("Read JSON File"),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 12.0),
              //   child: Text(
              //     _jsonContent,
              //     textAlign: TextAlign.center,
              //   ),
              // ),
              Container(
                width: 350,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Column(
                  children: [
                    Text(
                      "Nama : " + _name,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 350,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Column(
                  children: [
                    Text(
                      "Umur : " + _age,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 350,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Column(
                  children: [
                    Text(
                      "Jenis Kelamin : " + _gender,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 350,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Column(
                  children: [
                    Text(
                      "Hobi : " + _hobi,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 350,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Column(
                  children: [
                    Text(
                      "Github : " + _github,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
               Container(
                width: 350,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Column(
                  children: [
                    Text(
                      "Article : " + _articles,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
               Container(
                width: 350,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Column(
                  children: [
                    Text(
                      "Contact : " + _contact,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}