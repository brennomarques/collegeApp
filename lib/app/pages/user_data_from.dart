import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDate extends StatefulWidget {
  // const UserDate({ Key? key }) : super(key: key);

  @override
  _UserDateState createState() => _UserDateState();
}

class _UserDateState extends State<UserDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados pesssoais'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Aqui e Dados pessoais')],
        ),
      ),
    );
  }
}
