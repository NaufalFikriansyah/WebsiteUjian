<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Aplikasi Ujian MA 03 AL-MA'ARIF</title>
<link rel="shortcut icon" href="logo.jpg">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" ></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<?php
    date_default_timezone_set('Asia/Jakarta');	
    session_start();
    $databaseHost = 'localhost';
    $databaseName = 'ujian_online';
    $databaseUsername = 'root';
    $databasePassword = '';
    
    $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
?>
</head>
<body>
    <?php
    include "navbaradmin.php";
    ?>

    
    <section class="container-fluid p-2" style="height:90vh;">
        <div class="card h-100 ">
            <div class="card-body h-100">
                <div class="container h-100">
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col">
                            
                            <div class="card-transparent">
                                <div class="card-body " >   
                                    <h5>DAFTAR UJIAN <a class="btn btn-primary ml-2 text-white" href="tambahujian.php">Tambah Ujian</a></h5>
                                    <p></p>
                                    
                                    <table class="table" id="myTable">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Ujian</th>
                                                <th scope="col">KELAS</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $result = mysqli_query($mysqli, "SELECT s.*,k.keterangan as kelas FROM ujian s join kelas k on(s.kelas=k.no)");
                                            $x=1;
                                            while($data = mysqli_fetch_array($result)) {
                                            ?>
                                            <tr>
                                                <th scope="row"><?php echo $x?></th>
                                                <td><?php echo $data['keterangan']?></td>
                                                <td><?php echo $data['kelas']?></td>
                                                
                                                <td>
                   
                                                  
                                                    <a class="btn btn-sm btn-primary text-white" href="detailsoal.php?no=<?php echo $data['no']?>"><i class='fas fa-eye'></i></a>
                                                      <a class="btn btn-sm btn-primary text-white" href="updateujian.php?no=<?php echo $data['no']?>"><i class='fas fa-edit'></i></a>

                                                    
                                                    <?php
                                                    if($data['status']=='0'){
                                                    ?>
                                                    <a class="btn btn-sm btn-success text-white" href="aktifsoal.php?no=<?php echo $data['no']?>">AKTIFKAN</a>

                                                  
                                                    <?php
                                                    }
                                                    else{
                                                    if($data['expired']==''){
                                                        ?>
                                                    <a class="btn btn-sm btn-primary text-white" href="mulaisoal.php?no=<?php echo $data['no']?>">MULAI SOAL</a>
                                                    <?php
                                                    }
                                                    
                                                    ?>
                                                    <a class="btn btn-sm btn-warning text-white" href="lihattoken.php?no=<?php echo $data['no']?>">Lihat Token</a>  
                                                    <a class="btn btn-sm btn-secondary text-white" target="_blank" href="printnilai.php?no=<?php echo $data['no']?>">Print Nilai Siswa</a>
                                                     
                                                    <?php
                                                    
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <?php
                                            $x++;
                                            }
                                            ?>
                                            
                                            
                                        </tbody>
                                    </table>
                                    <script>
$(document).ready( function () {
$('#myTable').DataTable();
} );
</script>

                                    

                                </div>
                            </div>
                            
                        </div>
                      
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    

</body>
</html>