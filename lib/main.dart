import 'dart:convert';

import 'package:bloc_practice/blocs/internetbloc/internet_bloc.dart';
import 'package:bloc_practice/cubit/internet_cubit.dart';
import 'package:bloc_practice/screens/home_screen_bloc.dart';
import 'package:bloc_practice/screens/home_screen_cubit.dart';
import 'package:bloc_practice/serial-deserialization/UserModel.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SerialDeserial(),
      ),
    );
  }
}

class SerialDeserial extends StatefulWidget {
  const SerialDeserial({super.key});

  @override
  State<SerialDeserial> createState() => _SerialDeserialState();
}

class _SerialDeserialState extends State<SerialDeserial> {
  UserModel userObject = UserModel(
      email: "moazzamali0304@gmail.com", fullName: "Moazzam Ali", id: "001");

  String userJSON =
      '{"id":"001","fullName":"Moazzam","email":"Moazzam@gmail.com"}';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //"Serialization"
                Map<String, dynamic> userMap = userObject.toMap();
                var json = jsonEncode(userMap);
                print(json.toString());
                print(json);
              },
              child: const Text("Serialization"),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //"De-Serialization"
                var decoded = jsonDecode(userJSON);
                var userMap = decoded;
                UserModel newUser = UserModel.fromMap(userMap);
                print(newUser.toString());
                print(newUser.fullName.toString());
              },
              child: const Text("De-Serialization"),
            ),
          ],
        ),
      )),
    );
  }
}
