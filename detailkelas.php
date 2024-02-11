<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        include "head.php";
        if(isset($_POST['kelas'])){
            $query = "INSERT INTO kelas values(NULL,'".$_POST['keterangan']."')";
            $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
            $mysqli -> query($query);
            $mysqli -> commit();
        }
    ?>


</head>
<body>
    
    <?php
    include "navbaradmin.php";
    ?>

    <section class="container-fluid p-2" style="height:190vh;">
        <div class="card h-1200 ">
            <div class="card-body h-1200">
                
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col">
                            
                            <div class="card-transparent">
                                <div class="card-body " >   
                                    <h5>DAFTAR KELAS</h5>
                                    <form class="form-inline" method="POST" action="aksitambahkelas.php">
                                        <input class="form-control mr-2" type="text" name="kelas"  placeholder="Masukkan Kelas"> 
                                        <button type="submit" class="btn btn-success">TAMBAH</button>
                                    </form>
                                    <p></p>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">KELAS</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $result = mysqli_query($mysqli, "SELECT * FROM kelas");
                                            $x=1;
                                            while($data = mysqli_fetch_array($result)) {
                                            ?>
                                            <tr>
                                                <th scope="row"><?php echo $x?></th>
                                                <td><?php echo $data['keterangan']?></td>
                                                <td>
                                                    <a class="btn btn-sm btn-primary text-white" href="lihatsiswa.php?no=<?php echo $data['no']?>">LIHAT SISWA</a>
                                                    <a class="btn btn-sm btn-primary text-white" href="rekapnilai.php?no=<?php echo $data['no']?>">REKAP NILAI</a>
                                                    
                                                </td>
        
                                            </tr>
                                            <?php
                                            $x++;
                                            }
                                            ?>
                                            
                                            
                                        </tbody>
                                    </table>

                                </div>
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

</body>
</html>