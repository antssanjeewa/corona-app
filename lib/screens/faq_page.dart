import 'package:flutter/material.dart';

import '../data_source.dart';

class FAQPage extends StatelessWidget {

  final data;

  const FAQPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:450,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (ctx,index){
        return ExpansionTile(
          title: Text(data[index]['question'], style: TextStyle(fontWeight: FontWeight.bold),),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Text(data[index]['answer']),
            )
          ],
        );
      }),
    );
  }
}