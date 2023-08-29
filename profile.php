<?php
    include 'database_config.php';
ob_start(); // Start output buffering
include 'signin.php'; // Include the PHP fil
ob_end_clean(); 
$Student_Id =$Student_Data['Student_Id'];
// if(isset($_GET["id"])==!''){}
if(isset($_GET["id"]) ==!'') {
$Student_Id = $_GET['id'];
}
    if($conn){
        $getData = "SELECT * FROM `Student_Data` WHERE Student_Id =  $Student_Id";
        $result = mysqli_query($conn,$getData);
        $userId="";
        while( $r = mysqli_fetch_row($result))
        {
            $userId=$r[1];
            $profile=$r[2];
            $name=$r[3];
            $dob=$r[4];
            $phone=$r[5];
            $email=$r[6];
            $address =$r[7];
        }
        if ($result->num_rows> 0)
        {
            $resp["status"] = "1";
            $resp["Student_Id"] = $userId;
            $resp["Student_Profile"] = $profile;
            $resp["Student_Name"] = $name;
            $resp["Student_Dob"] = $dob;
            $resp["Student_Phone"] = $phone;
            $resp["Student_Email"]=$email;
            $resp["Student_Address"] = $address;
        }
        else{
            $resp["status"] = "-2";
            $resp["message"] = "ERROR : RECORD NOT FOUND";
        }
}
else{
$resp["status"]="-2";
$resp["message"]= "ERROR : DATABASE NOT CONNECTED";
}
    header('content-type: application/json');
    $response["response"]=$resp;
    echo json_encode($response);
    @mysqli_close($conn);
    ?>
    