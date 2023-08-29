<?php

include 'database_config.php';
if (isset($_GET['id']) && $_GET['id'] != '') {
    $Student_Id = $_GET['id'];
    $getData = "SELECT * FROM `Student_Data` WHERE Student_Id =  $Student_Id";
    $result = mysqli_query($conn, $getData);
    $userId="";
    while($r = mysqli_fetch_row($result)) {
        $userId=$r[1];
        $profile=$r[2];
        $name=$r[3];
        $address =$r[7];
    }
    if ($result->num_rows> 0) {
        $resp["status"] = "1";
        $resp["Student_Id"] = $userId;
        $resp["Student_Profile"] = $profile;
        $resp["Student_Name"] = $name;
    } else {
        $resp["status"] = "-2";
        $resp["message"] = "Enter correct email or password";
    }
} else {
    $resp["status"] = "-2";
    $resp["message"] = "ERROR: ID NOT FOUND";
}
header('content-type: application/json');
$response["response"]=$resp;
echo json_encode($response);
@mysqli_close($conn);
