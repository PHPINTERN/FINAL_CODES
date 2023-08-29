<?php

include 'database_config.php';
ob_start(); // Start output buffering
include 'signin.php'; // Include the PHP fil
ob_end_clean(); 
$Assignment_Id = rand(1111,9999);
$course = $Student_Data['Student_Branch'];
$year =$Student_Data['Student_Year'];
$Sem =$Student_Data['Student_Sem'];
if(isset($_GET["year"])==!'' && $_GET["sem"]==!''){
    $year =$Student_Data['year'];
    $Sem =$Student_Data['sem'];
}
$sql = "SELECT * FROM Faculty_List WHERE Course_Year='$year' && Course_Sem ='$Sem'";
$result = mysqli_query($conn, $sql);
$facultyArray = array();
if ($result->num_rows>0) {
    while ($row = $result->fetch_assoc()) {
        $faculty = array(
            "Emp_Id" => $row['Emp_Id'],
            "Emp_Name"=> $row['Emp_Name'],
            "Emp_Profile" =>$row['Emp_Profile'],
            "Emp_Phone"=> $row['Emp_Phone'],
            "Emp_Email" => $row['Emp_Email'],
            "Course_Name" => $row['Course_Name'],
            "Emp_Department" => $row['Emp_Department'],
             );
        $facultyArray[] = $faculty;
    }
    $response["response"]=$facultyArray;
    header('content-type: application/json');
    echo json_encode($response);

} else {
    $resp['results']= "No Faculty Available";
    header('content-type: application/json');

    $response["response"]=$resp;
    echo json_encode($response);
}
?>
