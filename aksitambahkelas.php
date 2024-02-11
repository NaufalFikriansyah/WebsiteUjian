<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

   
  
    $query = "INSERT INTO kelas values(NULL,'".$_POST['kelas']."')";
    echo $query;
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $mysqli -> query($query);
    $mysqli -> commit();
    
    header("Location:detailkelas.php");
 
?>

