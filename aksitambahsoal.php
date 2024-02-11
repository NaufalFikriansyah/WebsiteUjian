<?php
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    

   
   
    $query = "INSERT INTO soal values(NULL,'".$_POST['i1']."','".$_POST['i0']."')";
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
    $mysqli -> query($query);
    $mysqli -> commit();
    echo $query;
    $result = mysqli_query($mysqli, "SELECT * FROM soal where pertanyaan='".$_POST['i1']."'");
    while($data = mysqli_fetch_array($result)) {
        $id = $data['no'];
    }
    
    for($x=2;$x<7;$x++){
        $query = "INSERT INTO jawaban values(NULL,'".$_POST['i'.$x]."','".$id."','0')";
        if($x==$_POST['i7']){
            $query = "INSERT INTO jawaban values(NULL,'".$_POST['i'.$x]."','".$id."','1')";
        }
        
        $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
        $mysqli -> query($query);
        $mysqli -> commit();
    }
    header("Location:detailsoal.php?no=".$_POST['i0']."");
 
?>

