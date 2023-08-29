<?php

include 'database_config.php';
if($conn) {
    $id=$_GET['id'];
    $branch=$_GET['branch'];
    $issue=$_GET['issue'];
    $sql = "INSERT INTO raise_ticket (id, branch, issue)
    VALUES ('$id', '$branch', '$issue')";
    if ($conn->query($sql) === true) {
        $resp['message']="Issue success!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else {
    echo "No Database connection!";
}
mysqli_close($conn);
header('content-type: application/json');
$response["response"]=$resp;
echo json_encode($response);
?>




