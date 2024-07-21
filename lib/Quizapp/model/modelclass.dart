class Question {
  final String? question;
  final List<String>? options;
  final int? correctIndex;

  Question({this.question, this.options, this.correctIndex});
}

List<Question> questions = [
  Question(
    question: "What is the capital of France?",
    options: ["Berlin", "Madrid", "Paris"],
    correctIndex: 2,
  ),
  Question(
    question: "What is 2 + 2?",
    options: ["3", "4", "5"],
    correctIndex: 1,
  ),
  Question(
    question: "What is the boiling point of water?",
    options: ["90°C", "100°C", "110°C"],
    correctIndex: 1,
  ),
  Question(
    question: "Who wrote 'To Kill a Mockingbird'?",
    options: ["Harper Lee", "Mark Twain", "Ernest Hemingway"],
    correctIndex: 0,
  ),
  Question(
    question: "What is the largest planet in our solar system?",
    options: ["Earth", "Jupiter", "Saturn"],
    correctIndex: 1,
  ),
  Question(
    question: "What is the chemical symbol for gold?",
    options: ["Au", "Ag", "Pb"],
    correctIndex: 0,
  ),
  Question(
    question: "Who painted the Mona Lisa?",
    options: ["Vincent Van Gogh", "Leonardo da Vinci", "Pablo Picasso"],
    correctIndex: 1,
  ),
  Question(
    question: "What is the capital of Japan?",
    options: ["Seoul", "Beijing", "Tokyo"],
    correctIndex: 2,
  ),
  Question(
    question: "Which planet is known as the Red Planet?",
    options: ["Mars", "Venus", "Mercury"],
    correctIndex: 0,
  ),
  Question(
    question: "What is the hardest natural substance on Earth?",
    options: ["Gold", "Iron", "Diamond"],
    correctIndex: 2,
  ),
];
