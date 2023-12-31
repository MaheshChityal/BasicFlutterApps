
import 'package:flutter/material.dart';
import 'package:quizz_app/questions_summary/summary_items.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData,{super.key});

  final List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
            return SummaryItems(data);
          },
          ).toList(),
        ),
      ),
    );
  }
}