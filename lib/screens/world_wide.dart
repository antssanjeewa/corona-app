import 'package:flutter/material.dart';

import '../widgets/card_title.dart';
import './effected_country.dart';

class WorldWide extends StatelessWidget {
  final worldData;
  final coutryData;

  const WorldWide({Key key, this.worldData,this.coutryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return worldData != null
        ? Container(
            child: Column(
            children: <Widget>[
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 2),
                children: <Widget>[
                  StatePanel(
                    panelColor: Colors.red[100],
                    textColor: Colors.red[800],
                    title: "වාර්තා වී ඇති",
                    amount: worldData['cases'].toString(),
                  ),
                  StatePanel(
                    panelColor: Colors.blue[100],
                    textColor: Colors.blue[800],
                    title: "ප්‍රතිකාර ලබන",
                    amount: worldData['active'].toString(),
                  ),
                  StatePanel(
                    panelColor: Colors.green[100],
                    textColor: Colors.green[800],
                    title: "සුව වූ",
                    amount: worldData['recovered'].toString(),
                  ),
                  StatePanel(
                    panelColor: Colors.grey[300],
                    textColor: Colors.grey[800],
                    title: "මරණ",
                    amount: worldData['deaths'].toString(),
                  ),
                ],
              ),
              CardTitle(countryData: coutryData),
              MostEffectedCountry(data: coutryData)
            ],
          ))
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}

class StatePanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String amount;

  const StatePanel(
      {Key key, this.panelColor, this.textColor, this.title, this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(5),
      height: 80,
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor, fontSize: 15),
          ),
          Text(
            amount,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
          )
        ],
      ),
    );
  }
}
