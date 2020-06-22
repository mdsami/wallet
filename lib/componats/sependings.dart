import 'package:flutter/material.dart';

class Spendings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrnheight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      height: scrnheight / 3.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Services",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Amir Hamza"),
                            Text(
                              "21 june",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          Text(
                            "-\$50",
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "-\$50",
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
