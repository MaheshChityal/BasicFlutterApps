import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
   AnswerButton( {super.key, required this.answerText,required this.onTap,});

  final answerText;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        backgroundColor: Color.fromARGB(255, 32, 15, 63),
        foregroundColor: Colors.white,
        
      ),
      child: Text(answerText),
      
    );
    
  }
}
