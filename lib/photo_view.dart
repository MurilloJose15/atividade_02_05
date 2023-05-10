import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Photo_View extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo View'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gon', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 800,
                    height: 600,
                    child: PhotoView(
                      imageProvider: AssetImage('media/gon.jpg'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
