import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
            ),
            CircularProgressIndicator(),
            Expanded(
              child: Image(
                image: AssetImage(
                  'assets/image/triangle.png',
                ),
                // height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Image(image: AssetImage('assets/image/triangle.png'))
