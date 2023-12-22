import 'package:flutter/material.dart';

class AddNotes extends StatelessWidget {
  AddNotes({super.key});

  // final print1 = print('saved');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(8),
                )),
                labelText: 'Title',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {},
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Save',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
