// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class CountryPage extends StatelessWidget {
  final countryData;

  const CountryPage({Key key, this.countryData}) : super(key: key);

  // fetchCountryData() async {
  //   http.Response responce =
  //       await http.get('https://corona.lmao.ninja/countries');
  //   setState(() {
  //     countryData = json.decode(responce.body);
  //   });
  // }

  // @override
  // void initState() {
  //   fetchCountryData();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country States"),
      ),
      body: countryData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: countryData.length,
              itemBuilder: (ctx, index) {
                return Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 10))
                  ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(countryData[index]['country']),
                          SizedBox(height: 5.0),
                          Image.network(
                            countryData[index]['countryInfo']['flag'],
                            height: 30,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "COMFIRMED : ${countryData[index]['cases']} [+${countryData[index]['todayCases']}]",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "ACTIVE : ${countryData[index]['active']}",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "RECOVERED : ${countryData[index]['recovered']}",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "DEATHS : ${countryData[index]['deaths']}[+${countryData[index]['todayDeaths']}]",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
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
