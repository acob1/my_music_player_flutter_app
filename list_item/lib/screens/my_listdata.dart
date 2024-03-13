import 'package:flutter/material.dart';

import '../models/listmodel.dart';
import '../widgets/listitemwidgets.dart';
import '../widgets/searchbottom.dart';
import '../widgets/secondtablehead.dart';
import '../widgets/tablehead.dart';

class MyListData extends StatefulWidget {
  const MyListData({
    super.key,
  });

  @override
  State<MyListData> createState() => _MyListDataState();
}

class _MyListDataState extends State<MyListData> {
  final searchName = TextEditingController();

  int selectedIndex = 0;
  // final List<String> categories = [
  //   'Pay Period',
  //   'Gross Sales',
  //   'Total Deductions',
  //   'Net Pay'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(242, 255, 255, 255),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 24, 152, 226),
        title: const Center(
          child: Text(
            'Pay Slip',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 3.0,
          ),
          SearchBottom(searchName: searchName),
          const SizedBox(
            height: 5.0,
          ),
          const TableheadWidget(),
          const SizedBox(
            height: 10.0,
          ),
          const SecondtableHead(),
          const Expanded(
            child: ListitemWidgets(),
          ),
        ],
      ),
    );
  }
}
