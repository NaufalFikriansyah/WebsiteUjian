<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

   
    
    $query = "delete from jawaban where soal='".$_GET['no']."'";
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $mysqli -> query($query);
    $mysqli -> commit();



    $query = "delete from soal where no='".$_GET['no']."'";
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $mysqli -> query($query);
    $mysqli -> commit();
    
    header("Location:detailsoal.php?no=".$_GET['id']."");
 
?>

