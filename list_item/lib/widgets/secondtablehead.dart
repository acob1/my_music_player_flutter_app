import 'package:flutter/material.dart';

class SecondtableHead extends StatelessWidget {
  const SecondtableHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.blue[100],
      child: const Row(
        children: [
          SizedBox(
            width: 15.0,
          ),
          Text(
            '27th ',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(
            'Feb',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(
            '2024',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '2554.00',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 30.0,
          ),
          Text(
            '200.00',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 35.0,
          ),
          Text(
            '2554.00',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

