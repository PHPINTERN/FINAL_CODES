<?php
    include 'database_config.php';
    ob_start(); // Start output buffering
    include 'signin.php'; // Include the PHP fil
    ob_end_clean(); 

    if(isset($_GET["Course_Id"]) ==!''){
        // $Home_Assignment[];
        $Course_Id =$_GET['Course_Id'];
        $SQL1 = "SELECT * FROM  Home_Assignment_List WHERE Course_Id= '$Course_Id'";
        $result = mysqli_query($conn, $SQL1);
        if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_row($result)) {
            $DATE = $row[4];
            $MAIN_DATE =  date("d", strtotime($DATE));
            $DAY = date("l", strtotime($DATE));
            $MONTH = date("M",strtotime($DATE));
            $YEAR = date("Y", strtotime($DATE));
            $FINAL = $DAY." , ".$MAIN_DATE." ".$MONTH." ".$YEAR;

            $DATE1 = $row[5];
            $MAIN_DATE1 =  date("d", strtotime($DATE1));
            $DAY1 = date("l", strtotime($DATE1));
            $MONTH1 = date("M",strtotime($DATE1));
            $YEAR1 = date("Y", strtotime($DATE1));
            $FINAL1 = $DAY1." , ".$MAIN_DATE1." ".$MONTH1." ".$YEAR1;
        $Home_Assignment_Data = array(
            "Course_Code"=> $row[0],
            "Course_Name"=> $row[1],
            "Course_Co" => $row[2],
            "Home_Assignment_Link" => $row[3],
            "Starting_Date"=> $FINAL,
            "Ending_Date"=> $FINAL1,
             );
             $Home_Assignment[]=$Home_Assignment_Data;
            }   
            $response["response"]=$Home_Assignment;
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
        $Resp1['message'] ="Course_Id not Found"; 
        $response["response"]=$Resp1;
        header('content-type: application/json');
        echo json_encode($response);
    }

?>