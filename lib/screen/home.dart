import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:wallet/componats/sependings.dart';
import 'package:wallet/componats/service.dart';
import 'package:wallet/widget/custom_box.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scrnheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                height: scrnheight / 3.5,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    )),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:60,left: 10 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "HI",
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          ),
                          Text(
                            "Amir Hamza",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                    )
                  ],
                ),
              ),
            )),
            //Todo Pichart start
        Positioned(
            left: 16,
            right: 16,
            top: scrnheight / 4.7,
            bottom: 0,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  height: scrnheight / 3.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 2,
                        )
                      ]),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 10,
                        bottom: 0,
                        top: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width / 2,
                          decoration: BoxDecoration(),
                          child: PieChart(PieChartData(
                              centerSpaceRadius: 40,
                              sectionsSpace: 0,
                              startDegreeOffset: -120,
                              borderData: FlBorderData(show: false),
                              sections: [
                                PieChartSectionData(
                                    value: 15,
                                    color: Colors.indigo,
                                    title: "15%"),
                                PieChartSectionData(
                                    value: 35,
                                    color: Colors.yellow,
                                    title: "35%"),
                                PieChartSectionData(
                                    value: 45,
                                    color: Colors.blue,
                                    title: "45%"),
                              ])),
                        ),
                      ),
                      //todo Pichart end
                      Positioned(
                          top: 16,
                          left: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              _text("\$494.57", "Available blance", "Spent",
                                  "\$1.658"),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.indigo,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Earned",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.yellow),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 4),
                                child: Text(
                                  "\$5.984",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                //services section
                Service(),
                //spendings
                Spendings()
              ],
            ))
      ],
    ));
  }

  _text(String dollar1, String txt1, String txt2, String dollar2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "$dollar1",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.indigo),
        ),
        Text(
          "$txt1",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Container(
              height: 8,
              width: 8,
              decoration:
                  BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "$txt2",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Text(
            "$dollar2",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.indigo),
          ),
        ),
      ],
    );
  }
}
