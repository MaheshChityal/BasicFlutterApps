import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  AddNotes({super.key});

  


  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.addListener(_saveTitleValue);
    descriptionController.addListener(_saveDescriptionValue);
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  

  void _saveTitleValue (){
    final titleText = titleController.text;
    print('title text: $titleText');
  }

  void _saveDescriptionValue (){
    final descText = descriptionController.text;
    print('title text: $descText');
  }

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
              onChanged: (titleText){
                print('title text field $titleText (${titleText.characters.length})');
              },
              controller: titleController,
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
              onChanged: (descText){
                print('title text field $descText (${descText.characters.length})');
              },
              controller: descriptionController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                
              },
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
