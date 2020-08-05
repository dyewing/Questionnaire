import 'package:flutter/material.dart';
import 'package:sample_teg2_app/screen/home_screen.dart';
import 'package:sample_teg2_app/screen/questionnaire_screen.dart';
import 'package:sample_teg2_app/screen/result_screen.dart';

void main() => runApp(SampleTegII());


class SampleTegII extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        QuestionnaireScreen.id: (context) => QuestionnaireScreen(),
        ResultScreen.id: (context) => ResultScreen(),
      },
    );
  }
}

