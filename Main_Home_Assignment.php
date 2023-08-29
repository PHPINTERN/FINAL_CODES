<?php
include 'database_config.php';
ob_start(); // Start output buffering
include 'signin.php'; // Include the PHP fil
ob_end_clean(); 
if($conn){
    if(isset($_POST['submit']) && isset($_FILES['file'])){
            // echo "<pre>";
            // print_r ($_FILES['file']);
            // echo "</pre>";
            $file_name =$_FILES['file']['name'];
            $file_size =$_FILES['file']['size'];
            $file_temp_name=$_FILES['file']['tmp_name'];
            $error =$_FILES['file']['error'];
            if($error === 0){
                    if($file_size > 5242880){
                        $resp['message']= "File is exceeding 5MB ";
                        $response["response"]=$resp;
                        header('content-type: application/json');
                        echo json_encode($response);
                    }
                    else{
                            $file_ex = pathinfo($file_name,PATHINFO_EXTENSION);
                            $file_ex_lc =strtolower($file_ex);
                            $allowed_exs=array("pdf","doc","docx",".epub","gdoc",".odt",".oth",".rtf");
                            if(in_array($file_ex_lc,$allowed_exs)){
                                    $Student_Id = $Student_Data['Student_Id'];
                                    $new_file_name = uniqid("$Student_Id-",true).'.'.$file_ex_lc;
                                    $path = 'Home_Assignment/'.$new_file_name;
                                    move_uploaded_file($file_temp_name,$path);
                                    $Home_Assignment_Path = "http://localhost/main%20code/Home_Assignment/$new_file_name";
                                    // echo $Home_Assignment_Path; 
                                    $Status =1;
                                    $Assignment_Id =rand(1111,9999);
                                   $SQL_Query =" INSERT INTO Home_Assignment_Submission(Student_Id,Assignment_Id,Assignment_Status,Assignment_Path) VALUES ('$Student_Id','$Assignment_Id','$Status','$Home_Assignment_Path')";
                                    mysqli_query($conn, $SQL_Query );
                                   $resp["Message"]="Uploaded";
                                   $response["response"]=$resp;
                                   header('content-type: application/json');
                                   echo json_encode($response);

                            }
                            else{
                                $resp['message']= "Kindly Upload pdf and doc"; 
                                $response["response"]=$resp;
                                header('content-type: application/json');
                                echo json_encode($response);
                            }

                    }
            }
            else{
                $resp['message']="Unknown Error Occurred";
                $response["response"]=$resp;
                header('content-type: application/json');
                echo json_encode($response);
            }

    }
    else{

    }
}
else{
    $resp['message']="Database Not Connected";
}



?>