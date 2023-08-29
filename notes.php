
<?php
include 'database_config.php';
$Branch =$_GET['branch'];
if($conn) {
    $sql = "SELECT Notes_Name,Course_Id,Notes_Link FROM Notes_Data WHERE Branch_Name ='$Branch'";
    $result =$conn->query($sql);
    $i=1;
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $resp["status"] = ''.$i.'';
            $i++;
            $resp["Note Name"] =  $row["Notes_Name"] ;
            $resp["Course ID"] =  $row["Course_Id"] ;
            $resp["Note Link"] =  $row["Notes_Link"] ;
            header('content-type: application/json');
            $response["response"]=$resp;
            echo json_encode($response);
        }
    } else {
        $resp['status']="0";
        $resp['message']="No Notes Present";
        header('content-type: application/json');
        $response["response"]=$resp;
        echo json_encode($response);
    }
} else {
    $resp['status']="0";
    $resp['message']="Database Not Conneted";
    header('content-type: application/json');
    $response["response"]=$resp;
    echo json_encode($response);
}
?>




