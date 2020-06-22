import 'package:flutter/material.dart';
import 'package:wallet/widget/custom_box.dart';

class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrnheight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      height: scrnheight /3,
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
            child: Text(
              "Services",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              flex: 6,
              child: GridView.count(
                crossAxisSpacing: 4,
                mainAxisSpacing: 10,
                // childAspectRatio: 1.15,
                crossAxisCount: 4,
                children: <Widget>[
                  Box(
                    color: Color(0xffFFC700),
                  ),
                  Box(
                    color: Color(0xff4CE364),
                  ),
                  Box(
                    color: Color(0xffFFC700),
                  ),
                  Box(
                    color: Color(0xff4CE364),
                  ),
                  Box(
                    color: Color(0xffFFC700),
                  ),
                  Box(
                    color: Color(0xff4CE364),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
