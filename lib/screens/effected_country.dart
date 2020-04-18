import 'package:flutter/material.dart';

class MostEffectedCountry extends StatelessWidget {
  final data;

  const MostEffectedCountry({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (ctx, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.network(
                    data[index]['countryInfo']['flag'],
                    height: 30,
                  ),
                  Text(
                    data[index]['country'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "වාර්තා වූ : ${data[index]['cases']}",
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                        "මරණ : ${data[index]['deaths']}",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
