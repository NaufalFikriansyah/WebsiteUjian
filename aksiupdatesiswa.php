<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

   
    if($_POST['i4']==$_POST['i5']){
        $query = "update siswa set nis='".$_POST['i1']."',nama='".$_POST['i2']."',kelas='".$_POST['i3']."',tempat_lahir='".$_POST['i6']."',tanggal_lahir='".$_POST['i7']."',jenis_kelamin='".$_POST['i8']."',alamat='".$_POST['i9']."',password=md5('".$_POST['i1']."') where nis='".$_POST['i0']."'";
        $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
        $mysqli -> query($query);
        $mysqli -> commit();
    }
    header("Location:detailsiswa.php");
 
?>

