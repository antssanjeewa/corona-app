import 'package:flutter/material.dart';

import '../screens/country_page.dart';

class CardTitle extends StatelessWidget {
  final countryData;

  const CardTitle({Key key, this.countryData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "වඩාත්ම බලපෑමට ලක්වූ රටවල්",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => CountryPage(countryData: countryData)));
              },
              child: Text(
                "View More",
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
