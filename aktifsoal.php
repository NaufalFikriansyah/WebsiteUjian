<?php

    //ini wajib dipanggil paling atas
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

//ini sesuaikan foldernya ke file 3 ini
require 'src/Exception.php';
require 'src/PHPMailer.php';
require 'src/SMTP.php';


//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

    function shuffle_array_lcg($nis,$tgl) {
        $c=11;
        $a=36;
        $m=35;

        $acak = fmod($nis,$tgl);
        $hasil=array($acak);

        for($x=0;$x<$m-1;$x++){
            $nilai = fmod($a*($acak+$c),$m);
            $acak = $nilai;
            array_push($hasil,$acak);
        }
    
        return $hasil;
    }

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
        $namaujian = $data['keterangan'];
    }

    $result = mysqli_query($mysqli, "SELECT * from soal where ujian='".$_GET['no']."'");
    $kodesoal=array();
    while($data = mysqli_fetch_array($result)) {
        array_push($kodesoal,$data['no']);
    }

    $tgl = date('Y-m-d H:i:s');
    $result = mysqli_query($mysqli, "SELECT s.*,k.keterangan from siswa s join kelas k on (s.kelas=k.no) where s.kelas='".$kelas."'");
    $te = array();
    while($data = mysqli_fetch_array($result)) {
        $str_result = $data['nama'].$data['nis'].date('Y-m-d h:i:s');
        $token = substr(str_shuffle($str_result),0, 6);
        array_push($te,array($token,$data['nama'],$namaujian,$data['keterangan']));
        $query = "insert into token values('".$token."','".$data['nis']."','".$_GET['no']."','".$tgl."','0')";
        $mysqli -> query($query);
        $mysqli -> commit();

       

        $query = "insert into nilai_siswa values(NULL,'".$data['nis']."','".$_GET['no']."','0','0')";
        $mysqli -> query($query);
        $mysqli -> commit();

        $lahir = explode("-",(string)$data['tanggal_lahir'])[2];
        echo $lahir;
        

        $shuffled_array = shuffle_array_lcg($data['nis'],$lahir);

        $acaksoal=array();
        for($x=0;$x<count($shuffled_array);$x++){
            array_push($acaksoal,$kodesoal[$shuffled_array[$x]]);
        }

        

        for($x=0;$x<count($acaksoal);$x++){

            $query = "insert into acaksoal values(NULL,'".$_GET['no']."','".$acaksoal[$x]."','".$data['nis']."')";
            $mysqli -> query($query);
            $mysqli -> commit();
        }
    }
    $query = "update ujian set status='1', expired='".$exp."' where no='".$_GET['no']."'";
    $query = "update ujian set status='1' where no='".$_GET['no']."'";
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $mysqli -> query($query);
    $mysqli -> commit();

    ob_start();

    for($x=0;$x<count($te);$x++){
        echo $te[$x][0]."<br>".$te[$x][1];
        include "proses.php";
    }
    header("Location:detailujian.php");
 ob_end_flush();
?>

