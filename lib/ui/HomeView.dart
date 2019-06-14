// foundations
import 'package:flutter/material.dart';

// 3rd party

// mine
import 'ImageBox.dart';
import 'ButtonGroup.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image BLOC'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            ImageBox(),
            //Expanded(
            //  child: Container(),
            //),
            SizedBox(height: 20),
            ButtonGroup(),
          ],
        ),
      ),
    );
  }
}
