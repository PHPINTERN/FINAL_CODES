<?php

include 'database_config.php';
if (isset($_POST['send'])) {
    $text_notes = $_POST['text_notes'];
    $sql = "INSERT INTO `notes` (text_notes) 
    VALUES ('$text_notes')";
    if ($conn->query($sql) === TRUE) {
        $resp['message'] = "created";
    } else { 
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
mysqli_close($conn);
header('content-type: application/json');
$response["response"] = $resp;
echo json_encode($response);
?>
