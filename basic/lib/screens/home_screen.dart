import 'package:basic/screens/add_notes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        actions: [
          Image.asset(
            "assets/logo.jpeg",
            fit: BoxFit.fitHeight,
            height: 40,
            width: 40,
          ),
        ],
        title: const Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Notes',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
      body: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 65, top: 100),
          ),
          // InkWell(
          //   child: Text(
          //     'All',
          //     style: TextStyle(fontSize: 30, color: Colors.white),
          //   ),
          // )
          Text(
            'All',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 75)),
          Text(
            'Important',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  AddNotes()),
          );
        },
        // focusColor: Colors.white,
        highlightColor: Color.fromARGB(255, 49, 49, 49),
        icon: const Icon(
          Icons.add,
          size: 48,
          color: Colors.white,
        ),
      ),
    );
  }
}
