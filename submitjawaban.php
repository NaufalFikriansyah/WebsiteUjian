<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    date_default_timezone_set('Asia/Jakarta');	
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $result = mysqli_query($mysqli, "SELECT * FROM ujian where no ='".$_SESSION['ujian']."'");
    while($data = mysqli_fetch_array($result)) {
        $w2=$data['expired'];
    }
    $w1=date('Y-m-d H:i:s');
    
    $tgl1 = strtotime($w1);
    $tgl2 = strtotime($w2);

    if($tgl1>$tgl2){
        header("Location:selesaiujian.php?no=".$_SESSION['ujian']."");
    }
    else{
        $soal = $_POST['p'];
        $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
        $query = "delete from riwayat_jawaban where siswa='".$_SESSION['siswa']."' and soal='".$soal."'";
        $mysqli -> query($query);
        $mysqli -> commit();

        $soal = $_POST['p'];
        $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
        $query = "insert into riwayat_jawaban values(NULL,'".$_SESSION['siswa']."','".$_POST['j'.$soal]."','".$soal."')";
        $mysqli -> query($query);
        $mysqli -> commit();
        header("Location:ikutiujian.php?no=".$_POST['u']."&rn=".($_POST['next']+1)."");
    }
 
?>

