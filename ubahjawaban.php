<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

   
  
    
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);

    $query = "update jawaban set status='0' where soal='".$_GET['soal']."'";
    $mysqli -> query($query);
    $mysqli -> commit();

    $query = "update jawaban set status='1' where no='".$_GET['no']."'";
    $mysqli -> query($query);
    $mysqli -> commit();
    
    header("Location:detailjawaban.php?no=".$_GET['soal']."");
 
?>

