<?php
include '../config/config.php';

if (isset($_POST['takequiz'])) {
    $score = 0;

    if (isset($_POST['choice']) && isset($_POST['answer'])) {
        foreach ($_POST['choice'] as $questionId => $userAnswer) {
            $correctAnswer = $_POST['answer'][$questionId];

            if ($userAnswer == $correctAnswer) {
                $score += 10;
            }
        }
    }

    echo "<script type='text/javascript'>alert('Successfully Take Questionnaire');</script>";

    if ($score >= 1 && $score <= 49) {
        header("Location: ../register.php?score=$score");
    }else if ($score >= 50 && $score <= 69) {
        header("Location: ../register.php?score=$score");
    }else {
        header("Location: ../depressed.php?score=$score");
    }
    
    exit();
}
?>
