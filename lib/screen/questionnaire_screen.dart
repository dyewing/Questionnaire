import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_teg2_app/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sample_teg2_app/screen/result_screen.dart';

QuizBrain quizBrain = QuizBrain();

class QuestionnaireScreen extends StatefulWidget {
  static const String id = 'questionnaire_screen';

  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  List<Widget> scoreKeeper = [];

  List<Widget> scoreKeeper1 = [];
  List<Widget> scoreKeeper2 = [];
  List<Widget> scoreKeeper3 = [];
  List<Widget> scoreKeeper4 = [];
  List<Widget> scoreKeeper5 = [];
  List<Widget> scoreKeeper6 = [];


  void checkAnswer1(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
            context: context,
            title: "お疲れさまでした！",
            content: Column(
              children: <Widget>[
                Text('採点ページへ進んで下さい'),
              ],
            ),
            buttons: [
              DialogButton(
                onPressed: () {
                  Navigator.pushNamed(context, ResultScreen.id);
                },
                child: Text(
                  "採点ページ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]).show();
        quizBrain.reset();

        scoreKeeper = [];
      } else {
        if (quizBrain.getCorrectAnswer() == 'CP') {
          scoreKeeper1.add(Text('3'));
        } else if (quizBrain.getCorrectAnswer() == 'NP') {
          scoreKeeper2.add(Text('3'));
        } else if (quizBrain.getCorrectAnswer() == 'A') {
          scoreKeeper3.add(Text(
            '3'));
        } else if (quizBrain.getCorrectAnswer() == 'FC') {
          scoreKeeper4.add(Text(
            '3'));
        } else if (quizBrain.getCorrectAnswer() == 'AC') {
          scoreKeeper5.add(Text(
            '3'));
        } else {
          scoreKeeper6.add(Text(
            '3'));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  void checkAnswer2(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
            context: context,
            title: "お疲れさまでした！",
            content: Column(
              children: <Widget>[
                Text('採点ページへ進んで下さい'),
              ],
            ),
            buttons: [
              DialogButton(
                onPressed: () {
                  Navigator.pushNamed(context, ResultScreen.id);
                },
                child: Text(
                  "採点ページ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]).show();
        quizBrain.reset();

        scoreKeeper = [];
      } else {
        if (quizBrain.getCorrectAnswer() == 'CP') {
          scoreKeeper1.add(Text(
            '1'));
        } else if (quizBrain.getCorrectAnswer() == 'NP') {
          scoreKeeper2.add(Text(
            '1'));
        } else if (quizBrain.getCorrectAnswer() == 'A') {
          scoreKeeper3.add(Text(
            '1'));
        } else if (quizBrain.getCorrectAnswer() == 'FC') {
          scoreKeeper4.add(Text(
            '1'));
        } else if (quizBrain.getCorrectAnswer() == 'AC') {
          scoreKeeper5.add(Text(
            '1'));
        } else {
          scoreKeeper6.add(Text(
            '1'));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  void checkAnswer3(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
            context: context,
            title: "お疲れさまでした！",
            content: Column(
              children: <Widget>[
                Text('採点ページへ進んで下さい'),
              ],
            ),
            buttons: [
              DialogButton(
                onPressed: () {
                  Navigator.pushNamed(context, ResultScreen.id);
                },
                child: Text(
                  "採点ページ",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]).show();
        quizBrain.reset();

        scoreKeeper = [];
      } else {
        if (quizBrain.getCorrectAnswer() == 'CP') {
          scoreKeeper1.add(Text(
            '0'));
        } else if (quizBrain.getCorrectAnswer() == 'NP') {
          scoreKeeper2.add(Text(
            '0'));
        } else if (quizBrain.getCorrectAnswer() == 'A') {
          scoreKeeper3.add(Text(
            '0'));
        } else if (quizBrain.getCorrectAnswer() == 'FC') {
          scoreKeeper4.add(Text(
            '0'));
        } else if (quizBrain.getCorrectAnswer() == 'AC') {
          scoreKeeper5.add(Text(
            '0'));
        } else {
          scoreKeeper6.add(Text(
            '0'));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'アンケート',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  textColor: Colors.black,
                  color: Colors.green,
                  child: Text(
                    'はい',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: () {
                    checkAnswer1('はい');
                    print(scoreKeeper1);
                    print(scoreKeeper2);
                    print(scoreKeeper3);
                    print(scoreKeeper4);
                    print(scoreKeeper5);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    textColor: Colors.black,
                    color: Colors.green,
                    child: Text(
                      'どちらでもない',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    onPressed: () {
                      checkAnswer2('どちらでもない');
                    }),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  textColor: Colors.black,
                  color: Colors.green,
                  child: Text(
                    'いいえ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: () {
                    checkAnswer3('どちらでもない');
                  },
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('CP'),
                      Row(
                        children: scoreKeeper1,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('NP'),
                      Row(
                        children: scoreKeeper2,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('A'),
                      Row(
                        children: scoreKeeper3,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('FC'),
                      Row(
                        children: scoreKeeper4,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('AC'),
                      Row(
                        children: scoreKeeper5,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('L'),
                      Row(
                        children: scoreKeeper6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
