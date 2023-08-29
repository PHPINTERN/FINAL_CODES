<?php

include 'database_config.php';
$Student_Data=array(
    'Student_Id' => '2100520036',
    'Student_Profile' => 'Link',
    'Student_Name' => 'Chandra Pravesh',
    'Student_Dob' => '17/02/2004',
    'Student_Phone' => '7671890335',
    'Student_Address' => 'Malkapuram, Visakhapatnam',
    'Student_Branch' =>'BCA',
    'Student_Year' => '2021-2022',
    'Student_Sem' => 'ODD',
);
if (isset($_GET["email"]) && $_GET["email"] != '' &&isset($_GET['password']) && $_GET['password'] != '') {
    $email = $_GET["email"];
    $password = $_GET['password'];
    $flag=1;
    if(strlen($password)<=8) {
        $flag--;
        $resp1["status"] = "15";
        $resp1["message1"] = "Password must contain more then 8 character.";
    }
    if (!preg_match('/[A-Z]/', $password)) {
        $flag--;
        $resp1["status"] = "7";
        $resp1["message2"] = "Password must contain at least one Uowercase letter.";
    }
    // Check for at least one lowercase letter
    if (!preg_match('/[a-z]/', $password)) {
        $flag--;
        $resp1["status"] = "6";
        $resp1["message3"] = "Password must contain at least one lowercase letter.";
    }

    // Check for at least one special character
    if (!preg_match('/[@_]/', $password)) {
        $flag--;
        $resp1["status"] = "5";
        $resp1["message4"] = "Password must contain at least one Special letter (only @ and _ ).";
    }
    if (preg_match('/[ ]/', $password)) {
        $flag--;
        $resp1["status"] = "4";
        $resp1["message5"] = "Password should not contain any space";
    }
    if (!preg_match('/[0-9]/', $password)) {
        $flag--;
        $resp1["status"] = "3";
        $resp1["message6"] = "Password must contain at least one number character.";
    }

    if($flag>0) {
        $getData = "SELECT * FROM Student_Data  WHERE Student_Email = '$email' or Student_Id = '$email' and Student_Password='$password'";
        $result = mysqli_query($conn, $getData);
        $count =mysqli_num_rows($result);
        while($r = mysqli_fetch_row($result)) {
            $userId=$r[1];
            $profile=$r[2];
            $name=$r[3];
            $dob=$r[4];
            $phone=$r[5];
            $address =$r[7];
            $year = $r[8];
            $sem = $r[9];
        }
        if($count>0) {
            $resp1["status"] = "1";
            $resp1["userid"] = $userId;
            $resp1["message"] = "Login successfully";
            $Student_Data=array(
                'Student_Id' => $userId,
                'Student_Profile' => $profile,
                'Student_Name' => $name,
                'Student_Dob' => $dob,
                'Student_Phone' => $phone,
                'Student_Address' => $address,
                'Student_Year' => $year,
                'Student_Sem' => $sem,
            );
                    $response["response"]=$resp1;
                    echo json_encode($response);
        } else {
            $resp1["status"] = "2";
            $resp1["message"] = "Enter correct email or password";
            header('content-type: application/json');
            $response["response"]=$resp1;
            echo json_encode($response);
        }
    }
    
}
else{
    $resp1["status"] = "-2";
    $resp1["message"] = "Enter the ID or Password";
    header('content-type: application/json');
    $response["response"]=$resp1;
    echo json_encode($response);
}

?>