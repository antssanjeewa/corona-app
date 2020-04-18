import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './data_source.dart';
import './widgets/bottom_phrase.dart';
import './screens/faq_page.dart';
import './screens/select_country.dart';
import './screens/world_wide.dart';

// import './screens/info_panel.dart';
// import './country_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map worldData;
  fetchWorldWideData() async {
    http.Response responce = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = json.decode(responce.body);
    });
  }

  List countryData;
  fetchCountryData() async {
    http.Response responce =
        await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    setState(() {
      countryData = json.decode(responce.body);
    });
  }

  @override
  void initState() {
    fetchWorldWideData();
    fetchCountryData();
    super.initState();
  }

  int _selectedIndex = 0;
  List<String> titles = ["Sri Lanka", "World Wide", "FAQ's"];

  @override
  Widget build(BuildContext context) {
// navigation List
    List<Widget> _widgetOptions = <Widget>[
      SelectCountry(
        data: countryData != null
            ? countryData.firstWhere((item) {
                return item['country'] == "Sri Lanka";
              })
            : null,
      ),
      WorldWide(worldData: worldData, coutryData: countryData),
      FAQPage(DataSource.questionAnswers),
    ];

// builder
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_selectedIndex]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.0),
            _widgetOptions.elementAt(_selectedIndex),
            SizedBox(height: 20.0),
            BottomPhrase(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          // fixedColor: Colors.blue,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black26,
                icon: Icon(Icons.home),
                title: Text("Home")),
            BottomNavigationBarItem(
                backgroundColor: Colors.black26,
                icon: Icon(Icons.cloud_circle),
                title: Text("World")),
            BottomNavigationBarItem(
                backgroundColor: Colors.black26,
                icon: Icon(Icons.help),
                title: Text("FAQ")),
          ]),
    );
  }
}
