import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
            ),
            const CircularProgressIndicator(),
            Expanded(
              child: Image(
                image: const AssetImage(
                  'assets/images/triangle.png',
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
