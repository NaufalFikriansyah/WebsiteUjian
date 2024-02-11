<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        include "head.php";
    ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    
    <?php

    $result = mysqli_query($mysqli, "SELECT * FROM soal where ujian='".$_SESSION['ujian']."'");
    // include "navbarsiswa.php";
    date_default_timezone_set('Asia/Jakarta');	
    $n = mysqli_num_rows($result);
    
    ?>
    <section class="container-fluid" style="height:100vh">
        <div class="container h-100">
            
            <div class="row h-100 justify-content-center align-items-center">

                <div class="col">
                    
                    <div class="card">
                        <div class="card-body">   
                            <div class="container-fluid">
                                <?php
                                    echo "<div id='time'>";
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
                                    
                                    $selisih = date_diff( date_create($w2), date_create($w1) );
                                    if($selisih->h==0 and $selisih->i<=10){
                                        echo "<p class='text-danger'>Sisa waktu -> ".$selisih->h." jam : ".$selisih->i." menit : ".$selisih->s." detik</p>";
                                    }
                                    else{
                                        echo "<p class='text-success'>Sisa waktu -> ".$selisih->h." jam : ".$selisih->i." menit : ".$selisih->s." detik</p>";
                                    }

                                    echo "</div>";
                                    echo "<hr>";
                                    $result = mysqli_query($mysqli, "SELECT * FROM acaksoal a join soal s on(a.soal=s.no) where a.ujian='".$_SESSION['ujian']."' and a.siswa='".$_SESSION['siswa']."'");
                                    $x=1;
                                    $no=1;
                                    if(isset($_GET['rn'])){
                                        $no = $_GET['rn'];
                                    }
                                    $ind=0;
                                    while($data = mysqli_fetch_array($result)) {
                                        $ind++;
                                    }
                                    if($no>$ind){
                                        $no=1;
                                    }

                                    $result = mysqli_query($mysqli, "SELECT * FROM acaksoal a join soal s on(a.soal=s.no) where a.ujian='".$_SESSION['ujian']."' and a.siswa='".$_SESSION['siswa']."'");
                                    $rj=array();
                                    while($data = mysqli_fetch_array($result)) {
                                        $resultj = mysqli_query($mysqli, "SELECT * FROM jawaban where soal='".$data['no']."'");
                                        
                                        
                                        $tnd="";
                                        $resulta = mysqli_query($mysqli, "SELECT * FROM riwayat_jawaban where soal='".$data['no']."' and siswa='".$_SESSION['siswa']."'");
                                        while($dataa = mysqli_fetch_array($resulta)) {
                                            $tnd = $dataa['jawaban'];
                                        }
                                        if($tnd==""){
                                            array_push($rj,0);
                                        }
                                        else{
                                            array_push($rj,1);
                                        }
                                    }
     
                                    $result = mysqli_query($mysqli, "SELECT * FROM acaksoal a join soal s on(a.soal=s.no) where a.ujian='".$_SESSION['ujian']."' and a.siswa='".$_SESSION['siswa']."'");
                                    
                                    while($data = mysqli_fetch_array($result)) {
                                        if($x==$no){
                                    
                                ?>
                                <div class="row">
                                    <div class="col-4" style="border-right:1px solid">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <?php
                                                    if(isset($_GET['pesan'])){
                                                        echo "<p style='color:red'><i>Terdapat soal yang belum dijawab, silahkan dicek soal yang berwarna abu</i></p>";
                                                    }
                                                ?>
                                                <a class="btn btn-danger text-white mr-1 mb-1" href="selesaiujian.php?no=<?php echo $_SESSION['ujian']?>">Selesai</a>
                                                <?php
                                                for($i=0;$i<$n;$i++){
                                                    if($rj[$i]==0){
                                                        echo '<a class="btn btn-secondary text-white mr-1 mb-1" href="ikutiujian.php?no='.$_SESSION['ujian'].'&rn='.($i+1).'">'.($i+1).'</a>';
                                                    }
                                                    else{
                                                        echo '<a class="btn btn-primary text-white mr-1 mb-1" href="ikutiujian.php?no='.$_SESSION['ujian'].'&rn='.($i+1).'">'.($i+1).'</a>';
                                                    }
                                                    
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-8">
                                        <p>Soal No <?php echo $no;?></p>
                                        <hr>
                                        <p><?php echo $data['pertanyaan'] ?></p>
                                        <form action="submitjawaban.php" method="post">
                                            <input hidden value="<?php echo $no;?>" name="next" type="text">
                                            <?php
                                            $resultj = mysqli_query($mysqli, "SELECT * FROM jawaban WHERE soal='".$data['no']."'");
                                            $options = array();
                                            while ($dataj = mysqli_fetch_array($resultj)) {
                                                $options[] = array('no' => $dataj['no'], 'keterangan' => $dataj['keterangan']);
                                            }
                                            
                                            // Shuffle the options
                                            shuffle($options);
                                            $x=1;
                                            $no=1;
                                            
                                            $tnd="";
                                            $resulta = mysqli_query($mysqli, "SELECT * FROM riwayat_jawaban where soal='".$data['no']."' and siswa='".$_SESSION['siswa']."'");
                                            while($dataa = mysqli_fetch_array($resulta)) {
                                                $tnd = $dataa['jawaban'];
                                            }

                                            
                                             {
                                            ?>
                                            <?php foreach ($options as $option): ?>
                                                <div class="input-group mb-1">
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <input type="radio" <?php if ($option['no'] == $tnd) echo "checked"; ?> aria-label="Radio button for following text input" name="j<?php echo $data['no'] ?>" value="<?php echo $option['no'] ?>">
                                                            </div>
                                                        </div>
                                                        <input type="text" class="form-control" aria-label="Text input with radio button" value="<?php echo $option['keterangan'] ?>" readonly>
                                                    </div>
                                                </div>
                                            <?php endforeach; ?>
                                            <?php
                                            }
                                            ?>
                                            <input name="u" value="<?php echo $_SESSION['ujian']?>" hidden/>
                                            <button type="submit" name="p" value="<?php echo $data['no']?>" class="btn btn-primary btn-sm text-white">Submit</button>
                                        </form>
                                    </div>
                                    
                                </div>
                                <?php
                                        }
                                        $x++;
                                    }
                                    
                                ?>
                            </div>
                        </div>
                    </div>
                    
                </div>
      
                

            </div>
        </div>
    </section>
    <?php
        include "tail.php";
    ?>
   
        <script> 
        $(document).ready(function(){
            setInterval(function(){
                $( "#time" ).load(window.location.href + " #time" );
            }, 1000);
        });
        </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

</body>
</html>