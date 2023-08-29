<?php
include 'database_config.php';

ob_start();
include 'signin.php';
ob_end_clean();

$Student_Id = $Student_Data['Student_Id'];
    $text_notes = $_GET['text_notes'];
    date_default_timezone_set("Asia/Kolkata");   //India time (GMT+5:30)
    $time = date('d-m-Y H:i:s');
    $sql = "INSERT INTO `notes` (text_notes,student_id,created_at) 
    VALUES ('$text_notes','$Student_Id',$time)";
    if ($conn->query($sql) === TRUE) {
        $resp['message'] = "created";
    } else { 
        $resp['error'] = "error";
    }

mysqli_close($conn);
header('content-type: application/json');
$response["response"] = $resp;
echo json_encode($response);
?>