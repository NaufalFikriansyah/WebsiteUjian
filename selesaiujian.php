<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);

    $result = mysqli_query($mysqli, "SELECT * FROM acaksoal a join soal s on(a.soal=s.no) where a.ujian='".$_GET['no']."' and a.siswa='".$_SESSION['siswa']."'");
    $rj=1;
    while($data = mysqli_fetch_array($result)) {
        $resultj = mysqli_query($mysqli, "SELECT * FROM jawaban where soal='".$data['no']."'");
        
        
        $tnd="";
        $resulta = mysqli_query($mysqli, "SELECT * FROM riwayat_jawaban where soal='".$data['no']."' and siswa='".$_SESSION['siswa']."'");
        while($dataa = mysqli_fetch_array($resulta)) {
            $tnd = $dataa['jawaban'];
        }
        if($tnd==""){
            $rj=0;
        }
        
    }

    if($rj==0){
        header("Location:ikutiujian.php?pesan=0");
    }
    else{
        $result = mysqli_query($mysqli, "SELECT * FROM soal where ujian='".$_GET['no']."'");
        $benar=0;
        $n=0;
        while($data = mysqli_fetch_array($result)) {
            $resulta = mysqli_query($mysqli, "SELECT rj.*,j.status FROM riwayat_jawaban rj join jawaban j on (rj.jawaban=j.no) where rj.siswa = '".$_SESSION['siswa']."' and rj.soal='".$data['no']."'");
            while($dataa = mysqli_fetch_array($resulta)) {
                if($dataa['status']==1){
                    $benar++;
                }
            }
            $n++;
        }
    
        $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
        $mysqli -> query("update nilai_siswa set nilai='".($benar/$n*100)."',status='1' where siswa='".$_SESSION['siswa']."'");
        $mysqli -> commit();

        echo $benar/$n*100;
        $mysqli -> query("update token set status='1' where kode='".$_SESSION['kode']."'");
        $mysqli -> commit();
        header("Location:index.php");
    }


    


    
 
?>

