import 'package:flutter/material.dart';

void main() {
  runApp(quizzler());
}
  class quizzler extends StatelessWidget {
    const quizzler({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.black,
  body: SafeArea(
  child: Padding(
  padding: EdgeInsets.symmetric(horizontal: 10.0),
  child: QuizPage(),
  ),
  ),
      ),
      );

    }
  }
  class QuizPage extends StatefulWidget {
    const QuizPage({Key? key}) : super(key: key);

    @override
    State<QuizPage> createState() => _QuizPageState();
  }

  class _QuizPageState extends State<QuizPage> {
  List <Widget> scoreKeeper = [];
    @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
              child: TextButton(
                onPressed: (){
                },
                  child: Text('for question',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 24.0,
                ),
                ),
                ),
              ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){
                  scoreKeeper.add(
                    Icon(Icons.check, color: Colors.green,),
                  );
                  },
                child: Text('True',
                style: TextStyle(
      color: Colors.white,
      fontSize: 28.0,
                  fontWeight: FontWeight.w500,

      ),
      ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,

                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){},
                child: Text('False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],

      );
    }
  }

