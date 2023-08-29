<?php
session_start();

// Establish a database connection
include('database_config.php');

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Fetch questions, answers, and options from the database
$sql = "SELECT question, answer, option1, option2, option3, option4 FROM quiz_table";
$result = $conn->query($sql);

// Initialize variables
$quiz = array();
$totalQuestions = 0;
$score = 0;
$questionIndex = 0;

if ($result->num_rows > 0) {
  // Populate the $quiz array with questions, answers, and options
  while ($row = $result->fetch_assoc()) {
    $question = $row["question"];
    $answer = $row["answer"];
    $options = array($row["option1"], $row["option2"], $row["option3"], $row["option4"]);

    $quiz[$totalQuestions] = array(
      'question' => $question,
      'answer' => $answer,
      'options' => $options
    );

    $totalQuestions++;
  }

  // Check if the form has been submitted
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $selectedAnswer = $_POST["answer"];
    $currentQuestionIndex = $_POST["questionIndex"];
    $score = $_POST["score"];

    // Check if the answer is correct
    $currentQuestion = $quiz[$currentQuestionIndex];
    if ($currentQuestion['answer'] === $selectedAnswer) {
      $score++;
    }

    // Increment the question index
    $questionIndex = $currentQuestionIndex + 1;

    // Check if the quiz is complete
    if ($questionIndex == $totalQuestions) {
      // Display the final score
      $response["score"] = $score;
      $response["totalQuestions"] = $totalQuestions;
      echo json_encode($response);
      // Reset session variables
      session_unset();
      session_destroy();
      exit; // Stop further execution
    }
  }

  // Prepare the response data for the current question
  $currentQuestion = $quiz[$questionIndex];
  $currentOptions = $currentQuestion['options'];

  // Prepare the array for the response
  $responseData = array(
    'question' => $currentQuestion['question'],
    'options' => $currentOptions
  );

  // Return the JSON response
  header('Content-Type: application/json');
  echo json_encode($responseData);

} else {
  echo "No questions found in the database.";
  exit; // Stop further execution
}

// Close the database connection
$conn->close();

// Function to go to the next question
function goToNextQuestion($questionIndex, $totalQuestions, $score, $quiz) {
  $nextQuestionIndex = $questionIndex + 1;

  if ($nextQuestionIndex >= $totalQuestions) {
    // Quiz is complete
    $response["score"] = $score;
    $response["totalQuestions"] = $totalQuestions;
    echo json_encode($response);
    session_unset();
    session_destroy();
    exit; // Stop further execution
  } else {
    // Prepare the response data for the next question
    $nextQuestion = $quiz[$nextQuestionIndex];
    $nextQuestionOptions = $nextQuestion['options'];

    $response["question"] = $nextQuestion['question'];
    $response["options"] = $nextQuestionOptions;

    // Return the JSON response for the next question
    echo json_encode($response);
  }
}

// Function to go to a specific question
function goToQuestion($questionNumber, $totalQuestions, $score, $quiz) {
  if ($questionNumber >= $totalQuestions) {
    // Invalid question number, return an error message or handle it as needed
    $response["error"] = "Invalid question number.";
    echo json_encode($response);
    exit; // Stop further execution
  } else {
    // Prepare the response data for the requested question
    $requestedQuestion = $quiz[$questionNumber];
    $requestedQuestionOptions = $requestedQuestion['options'];

    $response["question"] = $requestedQuestion['question'];
    $response["options"] = $requestedQuestionOptions;

    // Return the JSON response for the requested question
    echo json_encode($response);
  }
}
// Example usage of the go to next question function
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $selectedAnswer = $_POST["answer"];
    $currentQuestionIndex = $_POST["questionIndex"];
    $score = $_POST["score"];
  
    // Check if the answer is correct
    $currentQuestion = $quiz[$currentQuestionIndex];
    if ($currentQuestion['answer'] === $selectedAnswer) {
      $score++;
    }
  
    goToNextQuestion($currentQuestionIndex, $totalQuestions, $score, $quiz);
  }
  
  // Example usage of the go to question function
  if ($_SERVER["REQUEST_METHOD"] == "GET") {
    if (isset($_GET["questionNumber"]) && isset($_GET["score"])) {
      $requestedQuestionNumber = $_GET["questionNumber"];
      $score = $_GET["score"];
  
      goToQuestion($requestedQuestionNumber, $totalQuestions, $score, $quiz);
    } else {
      // Proceed to the next question
      if (isset($_GET["answer"]) && isset($_GET["questionIndex"]) && isset($_GET["score"])) {
        $selectedAnswer = $_GET["answer"];
        $currentQuestionIndex = $_GET["questionIndex"];
        $score = $_GET["score"];
  
        // Check if the answer is correct
        $currentQuestion = $quiz[$currentQuestionIndex];
        if ($currentQuestion['answer'] === $selectedAnswer) {
          $score++;
        }
  
        goToNextQuestion($currentQuestionIndex, $totalQuestions, $score, $quiz);
      } else {
        $response["error"] = "Missing parameters. Please provide 'answer', 'questionIndex', and 'score'.";
        echo json_encode($response);
      }
    }
  }
  
  
  ?>