<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    $ada=0;
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
    $result = mysqli_query($mysqli, "SELECT * FROM siswa where nis='".$_POST['un']."' and password=md5('".$_POST['pass']."')");
    echo "SELECT * FROM siswa where nis='".$_POST['un']."' and password=md5('".$_POST['pass']."')";
    while($data = mysqli_fetch_array($result)) {
        $_SESSION['nis'] = $data['nis'];
        $_SESSION['kelas'] = $data['kelas'];
        $_SESSION['nama'] = $data['nama'];
        header("Location:siswa.php");
        $ada=1;
    }

    $result = mysqli_query($mysqli, "SELECT * FROM admin where username='".$_POST['un']."' and password=md5('".$_POST['pass']."')");
    // echo "SELECT * FROM admin where username='".$_POST['un']."' and password=md5('".$_POST['pass']."')";
    
    while($data = mysqli_fetch_array($result)) {
        $_SESSION['un'] = $data['username'];
        $_SESSION['nama'] = $data['nama'];
        header("Location:admin.php");
        $ada=1;
    }

    if($ada==0){
        header("Location:index.php");
    }
    
 
?>