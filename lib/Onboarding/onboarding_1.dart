import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/Onboarding/Onboarding_2.dart';

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  dynamic operator [](String field) {
    switch (field) {
      case 'name':
        return name;
      case 'age':
        return age;
      default:
        throw ArgumentError('Invalid field: $field');
    }
  }
}

final person = Person(name: 'John', age: 30);
final name = person['name']; // Access the name field using the [] operator
final age = person['age']; // Access the age field using the [] operator

class Welcome1 extends StatelessWidget {
  Welcome1({Key? key}) : super(key: key);

  // Get a reference to the Firestore collection
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  // Add a new document to the collection
  addUser() async {
    await users.add({'name': 'John', 'age': 25});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 33,
            ),
            Flexible(
              flex: 1,
              child: Image.asset(
                'images/first.png',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    '\nFresh Food',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\nFresh food made from the finest\ningredients and always served hot!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Container(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: const Icon(
                    Icons.more_horiz_rounded,
                  ),
                ),
                Flexible(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        addUser();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (const Welcome2()))));
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
