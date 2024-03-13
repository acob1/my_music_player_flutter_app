import 'package:flutter/material.dart';

class TableheadWidget extends StatelessWidget {
  const TableheadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.0,
      // color: Colors.blue,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Pay Period',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            '|',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          ),
          SizedBox(
            width: 3.0,
          ),
          Text(
            'Gross Sal',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          ),
          SizedBox(
            width: 3.0,
          ),
          Text(
            '|',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          ),
          SizedBox(
            width: 1.0,
          ),
          Text(
            'Total Deductions',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          ),
          Text(
            '|',
            style: TextStyle(
              fontSize: 14.0, fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          ),
          SizedBox(
            width: 4.0,
          ),
          Text(
            'Net Pay',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}

