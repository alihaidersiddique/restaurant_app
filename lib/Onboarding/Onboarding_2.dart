import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Onboarding_3.dart';

class Welcome2 extends StatelessWidget {
  Welcome2({Key? key}) : super(key: key);

  // Get a reference to the Firestore collection
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  // Add a new document to the collection
  addUser() async {
    await users.add({'name': 'Maarij', 'age': 24});
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
              flex: 2,
              child: Image.asset(
                'images/delivery.png',
              ),
            ),

            const Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    '\nFast Delivery',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\nServing You Quick & Easy\nRound the Clock!',
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
                  child: TextButton(
                    onPressed: () {
                      addUser();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => (Welcome2()))));
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (const Welcome3()))));
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
            // const SizedBox(
            //   height: 0.1,
            // )
          ],
        ),
      ),
    );
  }
}
