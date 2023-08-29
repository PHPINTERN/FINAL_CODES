<?php

include 'database_config.php';
if($conn) {
    $ID=$_GET['id'];
    $BRANCH=$_GET['branch'];
    $sql="SELECT * FROM Exam_Result  WHERE Student_Id='$ID' AND Student_Branch='$BRANCH'";
    $rs=$conn->query($sql);
    if($rs->num_rows > 0) {
        while($row=$rs->fetch_assoc()) {
            //retriving  the data from db
            $data = array(
                'success' => 'True',
                'id' => $row['Student_Id'],
                'branch' => $row['Student_Branch'],
                'branch exam result link' => $row['Result'],
            );
            // Convert the data to a JSON string
            $json = json_encode($data);
            // Set the headers to indicate that the response is in JSON format
            header('Content-Type: application/json');
            // Output the JSON string
            echo $json;
        }
    } else {
        $data = array(
            'success' => 'False',
            'Data' => 'Data not found!',
        );
        // Convert the data to a JSON string
        $json = json_encode($data);
        // Set the headers to indicate that the response is in JSON format
        header('Content-Type: application/json');
        // Output the JSON string
        echo $json;
    }
} else {
    $data = array(
        'success' => 'False',
        'Connection' => 'Failed to connnect db!',
    );
    // Convert the data to a JSON string
    $json = json_encode($data);
    // Set the headers to indicate that the response is in JSON format
    header('Content-Type: application/json');
    // Output the JSON string
    echo $json;
}
