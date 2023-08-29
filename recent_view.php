<?php
   include 'database_config.php';
ob_start(); // Start output buffering
include 'signin.php'; // Include the PHP fil
ob_end_clean();
$Student_Id = $Student_Data['Student_Id'];
// if (isset($_GET["email"]) && $_GET["email"] != '' &&isset($_GET['password']) && $_GET['password'] != '') {
if(isset($_GET["id"])==!''){
    $Student_Id = $_GET['id'];
}
if ($conn) {
    $sql = "SELECT * FROM recent_view_table WHERE Student_Id='$Student_Id'"; // Replace with your table name
    $result = $conn->query($sql);
    // Check if any rows were returned
    if ($result->num_rows > 0) {
        $Recent_View_Data['Status'] = 200; 
        // Loop through the rows and fetch data
        while ($row = $result->fetch_assoc()) {
            $data=array(
                "Title" => $row['items_title'],
                "Viewed_At" => $row['viewed_at'],
                "Icon" => $row['logo']
            );
            $Recent_View_Data[] = $data;
        }

            $response["response"]=$Recent_View_Data;
            header('content-type: application/json');
            echo json_encode($response);
    } else {
        $data=array(
            'Success'=>"1",
            'Result'=>array(
                'status'=>"Data not found!",
            ),
        );
        $json = json_encode($data);
        header('Content-Type: application/json');
        echo $json;
    }
      $conn->close();
} else {
    die("Connection failed: " . $conn->connect_error);
}
?>
