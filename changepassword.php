<?php
include 'database_config.php';
if($conn) {
    $Studentid = $_GET["id"];
    $NewPassword = $_GET["new"];
    $RepeatPassword = $_GET["repeat"];
    if ($NewPassword == $RepeatPassword) {
        $sql_1 = "UPDATE Student_Data  SET  Student_Password = '$NewPassword' WHERE  Student_Id  = '$Studentid'";
        mysqli_query($conn, $sql_1);
        $resp["status"] = "2";
        $resp["message"] = "Password change Sucessfully";
    } else {
        $resp["status"] = "1";
        $resp["message"] = "Password Not Matching";
    }
} else {
    echo "DataBase Not connected";
}

header('content-type: application/json');
$response["response"]=$resp;
echo json_encode($response);
?>


