<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

   
  
  
    $query = "update ujian set keterangan='".$_POST['i1']."',kelas='".$_POST['i2']."',waktu='".$_POST['i3']."' where no='".$_POST['no']."'";
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $mysqli -> query($query);
    $mysqli -> commit();
    
    header("Location:detailujian.php");
 
?>

