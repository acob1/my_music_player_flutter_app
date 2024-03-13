import 'package:flutter/material.dart';

import '../models/person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 = Person(
      id: 1,
      name: 'Jacob Danso',
      email: 'Jlem@gmail.com',
    );
    print(person1);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
    );
  }
}
