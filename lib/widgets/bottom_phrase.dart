import 'package:flutter/material.dart';

import '../data_source.dart';

class BottomPhrase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      color: Colors.orange[100],
      child: Column(
        children: <Widget>[
          Text(
            DataSource.quoteSin,
            style: TextStyle(
                color: Colors.orange[800], fontWeight: FontWeight.bold),
          ),
            SizedBox(height: 20.0),
          Text(
              "WE ARE TOGETHER IN THE FIGHT",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
