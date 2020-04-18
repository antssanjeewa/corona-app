import 'package:flutter/material.dart';

class SelectCountry extends StatelessWidget {
  final data;

  const SelectCountry({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return data == null
        ? Container()
        : Container(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 15, offset: Offset(0, 3))
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      data['country'],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 10.0),
                    Image.network(
                      data['countryInfo']['flag'],
                      height: 50,
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _oneRow(
                        title: "වාර්තා වී ඇති",
                        amount: "${data['cases']}[+${data['todayCases']}]",
                        color: Colors.red),
                    _oneRow(
                        title: "ප්‍රතිකාර ලබන",
                        amount: "${data['active']}",
                        color: Colors.blue),
                    _oneRow(
                        title: "සුව වූ",
                        amount: "${data['recovered']}",
                        color: Colors.green),
                    _oneRow(
                        title: "මරණ",
                        amount: "${data['deaths']}[+${data['todayDeaths']}]",
                        color: Colors.grey),
                  ],
                )
              ],
            ),
          );
  }

  Widget _oneRow({String title, String amount, Color color}) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(width: 30.0),
          Text(
            amount,
            style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
