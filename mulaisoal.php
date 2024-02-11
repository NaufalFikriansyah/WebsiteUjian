<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    date_default_timezone_set('Asia/Jakarta');	
    $result = mysqli_query($mysqli, "SELECT * from ujian where no='".$_GET['no']."'");
    while($data = mysqli_fetch_array($result)) {
        $exp = date('Y-m-d H:i:s', time() + (60 * ($data['waktu']+15)));
        $kelas = $data['kelas'];
    }

    $result = mysqli_query($mysqli, "SELECT * from soal where ujian='".$_GET['no']."'");
    $kodesoal=array();
    while($data = mysqli_fetch_array($result)) {
        array_push($kodesoal,$data['no']);
    }


    $query = "update ujian set expired='".$exp."' where no='".$_GET['no']."'";
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $mysqli -> query($query);
    $mysqli -> commit();

    header("Location:detailujian.php");
 
?>

