import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text(
            'Contact Details'
            ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:  const [
                    Icon(Icons.call),
                    SizedBox(width:20),
                    Text('+91 9876543210',style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:  const [
                    Icon(Icons.email),
                    SizedBox(width:20),
                    Text('myname@gmail.com',style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:  const [
                    Icon(Icons.link_rounded),
                    SizedBox(width:20),
                    Text('https://myname.com',style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
