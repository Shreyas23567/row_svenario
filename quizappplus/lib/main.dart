import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "question": "Which team won in 2011?",
      "options": ["SouthAfrica", "India", "England", "Australia"],
      "correctAnswer": 1,
      "description": "Answer: India was victorius in the 2011 Worldcup Campaign"
    },
    {
      "question": "Who is the Best Batsman?",
      "options": ["Kane Williamson", "Joe Root", "Virat Kohli", "Steve Smith"],
      "correctAnswer": 2,
      "description": "Answer: Virat Kohli stands alone at the top of batting stats."
    },
    {
      "question": "Who is The Father of daddy hundreds?",
      "options": ["Kumar Sangakara", "Martin Guptil", "Chris Gayle", "Rohit Sharma"],
      "correctAnswer": 3,
      "description": "Answer: Rohit Sharma holds the record for most number of double hundreds"
    },
    {
      "question": "Who is the best Wicketkeeper?",
      "options": ["MS Dhoni", "K Sangakara", "Adam Gilchrist", "Dinesh Kartik"],
      "correctAnswer": 0,
      "description": "Answer: MSD also holds the record for fastest stumping in just 0.08 secs."
    },
    {
      "question": "Who is the GOAT of cricket?",
      "options": ["Sachin Tendulkar", "MS Dhoni", "Virat", "Viv Richards"],
      "correctAnswer": 1,
      "description": "Answer: MSD is also referred as the God of cricket for many fans."
    },
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score = 0;

  bool get showDescription => selectedAnswerIndex != -1;

  MaterialStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return MaterialStateProperty.all(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return MaterialStateProperty.all(Colors.red);
      } else {
        return MaterialStateProperty.all(null);
      }
    } else {
      return MaterialStateProperty.all(null);
    }
  }

  bool questionPage = true;

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Question : ${currentQuestionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[currentQuestionIndex]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  "A.${allQuestions[currentQuestionIndex]['options'][0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  "B.${allQuestions[currentQuestionIndex]['options'][1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  "C.${allQuestions[currentQuestionIndex]['options'][2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                child: Text(
                  "D.${allQuestions[currentQuestionIndex]['options'][3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            if (showDescription)
              SizedBox(
                width: 350,
                child: Text(
                  allQuestions[currentQuestionIndex]["description"],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (selectedAnswerIndex ==
                  allQuestions[currentQuestionIndex]['correctAnswer']) {
                score++;
              }

              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionPage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://i.pinimg.com/originals/bc/a4/c2/bca4c235c5246737e5fd8a24fac5a787.gif",
                height: 300,
              ),
              const SizedBox(height: 30),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Score: $score/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentQuestionIndex = 0;
                    selectedAnswerIndex = -1;
                    score = 0;
                    questionPage = true;
                  });
                },
                child: const Text(
                  "Reset Quiz",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 210, 45, 45),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
