<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

   
  
    $query = "INSERT INTO ujian values(NULL,'".$_POST['i1']."','".$_POST['i2']."',0,'".$_POST['i3']."',NULL)";
    echo $query;
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $mysqli -> query($query);
    $mysqli -> commit();
    
    header("Location:detailujian.php");
 
?>

