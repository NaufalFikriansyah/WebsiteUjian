<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

   
    if($_POST['i4']==$_POST['i5']){
        $query = "INSERT INTO siswa values('".$_POST['i1']."','".$_POST['i2']."','".$_POST['i3']."','".$_POST['i6']."','".$_POST['i7']."','".$_POST['i8']."','".$_POST['i9']."',md5('".$_POST['i4']."'))";
        $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
        $mysqli -> query($query);
        $mysqli -> commit();
    }
    header("Location:detailsiswa.php");
 
?>

