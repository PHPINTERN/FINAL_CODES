<?php
include 'database_config.php';
ob_start(); // Start output buffering
include 'signin.php'; // Include the PHP fil
ob_end_clean();
$Student_Id= $Student_Data['Student_Id'];
IF(isset($_GET["Student_Id"]) ==!''){$Student_Id = $_GET["Student_Id"];}
if(isset($_GET["Course_Id"]) ==!''&& isset($_GET["Course_Co"]) ==!''){
    $Course_Id =$_GET['Course_Id'];
    $Course_Co=$_GET['Course_Co'];
    $SQL = "SELECT * FROM Home_Assignment_Submission WHERE Course_Id ='$Course_Id' AND Course_Co = '$Course_Co'";
    $result = mysqli_query($conn, $SQL);
    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_row($result)) {
        $Submission = array(
            "Course_Id"=> $row[1],
            "Course_Name"=> $row[2],
            "Course_Year"=>$row[3],
            "Course_Sem"=>$row[4],
            "Couese_Co" => $row[5],
            "Submitted_Status"=> $row[7],
            "Grading_Status"=> $row[8],
            "Home_Assignment_Mark"=>$row[8],
            "Home_Assignment_Link" => $row[6],
             );
             $Submission_Status[]=$Submission;
            }
         $response["response"]=$Submission_Status;
         header('content-type: application/json');
         echo json_encode($response);
    }
    else{
        $Resp1['message'] ="No Data Found";
        $response["response"]=$Resp1;
        header('content-type: application/json');
        echo json_encode($response);
    }

}
else{
    $Resp1['message'] ="Course_Id and Course_Co not Found";
    $response["response"]=$Resp1;
    header('content-type: application/json');
    echo json_encode($response);
}

?>

