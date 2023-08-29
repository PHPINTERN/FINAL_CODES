<?php

include 'database_config.php';
ob_start(); // Start output buffering
include 'signin.php'; // Include the PHP fil
ob_end_clean();
$year= $Student_Data['Student_Year'];
$sem =$Student_Data['Student_Sem'];
if(isset($_GET['Year']) && $_GET['Year'] != '' && $_GET['Sem'] != '' && isset($_GET['Sem'])){
    $year= $_GET['Year'];
    $sem = $_GET['Sem'];
}
// print_r($Student_Data);
$getData2 = "SELECT * FROM Course_List  WHERE Course_Year = '$year' and Course_Sem = '$sem'";
$result2 = mysqli_query($conn, $getData2);
$count2 =mysqli_num_rows($result2);
while($row = mysqli_fetch_row($result2)) {
    $Subject_Array = array(
    $resp["Course_Id"] [] =  $row[2] ,
    $resp["Course_Name"][] =  $row[3] ,
    $resp["Course_Image"] =  $row[4]
    );
    $Subject[] = $Subject_Array;
    }

    $response["response"]=$Subject;
    header('content-type: application/json');
    echo json_encode($response);
?>








