import 'package:flutter/material.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/first.png',
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Fresh Food',
              style: TextStyle(
                  color: Colors.red, fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const Text(
              'Fresh food made from the finest\ningridients and always served hot!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Skip',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    child: const Icon(
                      Icons.more_horiz_rounded,
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Next',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  // Container(
                  //   height: double.infinity,
                  //   color: Colors.greenAccent,
                  //   child: Text('hi'),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
