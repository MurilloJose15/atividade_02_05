import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Flutter_Easy extends StatefulWidget {

  @override
  State<Flutter_Easy> createState() => _Flutter_EasyState();
}

class _Flutter_EasyState extends State<Flutter_Easy> {

  Timer? _timer;
  late double _progress;

  @override
  void initState() {
    super.initState();
    EasyLoading.addStatusCallback((status) {
      print('EasyLoading Status $status');
      if (status == EasyLoadingStatus.dismiss) {
        _timer?.cancel();
      }
    });
    EasyLoading.showSuccess('Use in initState');
    // EasyLoading.removeCallbacks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Easy Loading'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Teste'),
            Container(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        _timer?.cancel();
                        await EasyLoading.showSuccess('Great Success!');
                        print('EasyLoading showSuccess');
                      },
                      child: Text('Enviar!')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
