import 'package:flutter/material.dart';

class ValEmail extends StatefulWidget {

  @override
  State<ValEmail> createState() => _ValEmailState();
}
void main() {
  var email = "fredrik@gmail.com";
}
  assert(EmailValidator.validate(email));

class _ValEmailState extends State<ValEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Validator'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Teste')
          ],
        ),
      ),
    );
  }
}
