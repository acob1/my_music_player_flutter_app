import 'package:flutter/material.dart';

import '../models/listmodel.dart';

class ListitemWidgets extends StatelessWidget {
  const ListitemWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView.builder(
          itemCount: moneyDatas.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                const SizedBox(
                  height: 6.0,
                ),
                Container(
                  height: 70.0,
                  margin: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                    right: 5.0,
                    // left: 5.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            moneyDatas[index].days,
                            style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            moneyDatas[index].mounths,
                            style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            moneyDatas[index].year,
                            style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 17.0,
                          ),
                          Text(
                            moneyDatas[index].amounttwo,
                            style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Text(
                            moneyDatas[index].amountone,
                            style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Text(
                            moneyDatas[index].amounttwo,
                            style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blueGrey,
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}

