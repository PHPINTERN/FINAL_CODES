<?php
include 'database_config.php';
ob_start(); // Start output buffering
include 'signin.php'; // Include the PHP fil
ob_end_clean();
$Student_Id = $Student_Data["Student_Id"];
$Course_Id =$_GET['Course'];
if(isset($_GET["Student_Id"])==!''&& $_GET["Course"]==!''){
    $Student_Id = $_GET['Student_Id'];
    $Course_Id =$_GET['Course'];
}
$SQL1 = "SELECT * FROM Student_Quiz WHERE Student_Id= '$Student_Id'&& Course_Id ='$Course_Id'";
$result = mysqli_query($conn, $SQL1);
if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_row($result)) {
        $Quiz_Data = array(
            "Course_Name"=> $row[2],
            "Course_Co"=> $row[3],
            "Quiz_Id" => $row[4],
            "Quiz_Durarion" => $row[5],
            "Quiz_Starting_Date"=> $row[6],
            "Quiz_Ending_Date"=> $row[7],
            "Quiz_Status" => $row[8],
            "Quiz_Mark" => $row[9],
             );
             $Quiz_Array[]=$Quiz_Data;
            }   
            $response["response"]=$Quiz_Array;
            header('content-type: application/json');
            echo json_encode($response);

}
else{
    $resp1['Status'] ='1';
    $resp1['Message']="ID and Course not found";
    $response["response"]=$resp1;
            header('content-type: application/json');
            echo json_encode($response);
}
?>

