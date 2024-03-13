import 'package:flutter/material.dart';

class SearchBottom extends StatelessWidget {
  const SearchBottom({
    super.key,
    required this.searchName,
  });

  final TextEditingController searchName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 240, 240),
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: TextFormField(
          controller: searchName,
          decoration: const InputDecoration(
            // focusedBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.blue,
            //   ),
            // ),
            // fillColor: Colors.blue,
            border: InputBorder.none,
            // OutlineInputBorder(borderRadius:
            // BorderRadius.circular(1),),
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            labelText: 'Search Payperiod',
            labelStyle: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
