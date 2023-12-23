import 'package:basic/screens/add_notes.dart';
import 'package:basic/widgets/notesList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        actions: [
          Padding(padding: EdgeInsets.only(left: 10)),
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
      body:  Column(
        children: [
          Row(
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
          Expanded(child: ListsWithCards()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,size: 50,),
        backgroundColor: Color.fromARGB(255, 46, 45, 45),
        foregroundColor: Colors.white,
      

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  AddNotes()),
          );
        },
        // focusColor: Colors.white,
         
        ),
      );
    
  }
}
