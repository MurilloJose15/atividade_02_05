import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class ValEmail extends StatefulWidget {

  @override
  State<ValEmail> createState() => _ValEmailState();
}
void main() {
    const String email = 'muriloj732@gmail.com';
    final bool isValid = EmailValidator.validate(email);

    print('O Email é válido? ' + (isValid ? 'Sim' : 'Não'));
}
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
