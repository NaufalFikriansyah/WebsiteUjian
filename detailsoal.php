<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        include "head.php";
    ?>
</head>
<body>
    
    <?php
    include "navbaradmin.php";
    ?>
    <section class="container-fluid p-2" style="height:90vh;">
        <div class="card h-100 ">
            <div class="card-body h-100">
                <div class="container h-100" style="overflow:scroll">
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col">
                            
                            <div class="card-transparent">
                                <div class="card-body " >   
                                    <h5>DAFTAR SOAL</h5>
                                    <a class="btn btn-sm btn-primary text-white" href="tambahsoal.php?no=<?php echo $_GET['no']?>">Tambah Soal</a>
                                    <p></p>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">SOAL</th>
                                                <img style="height:90vh" src="lihat">

                                                <th>AKSI</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $result = mysqli_query($mysqli, "SELECT * from soal where ujian='".$_GET['no']."'");
                                            $x=1;
                                            while($data = mysqli_fetch_array($result)) {
                                            ?>
                                            <tr>
                                                <th scope="row"><?php echo $x?></th>
                                                <td><?php echo $data['pertanyaan']?></td>

                                                <td><a class="btn btn-sm btn-primary text-white" href="detailjawaban.php?no=<?php echo $data['no']?>"><i class='fas fa-eye'></i></a>
                                                 <a class="btn btn-sm btn-danger" onclick="return confirm('Apakah Anda Yakin Untuk Menghapus ?');" href="hapussoal.php?no=<?php echo $data['no']?>&id=<?php echo $_GET['no']?>"><i class='fas fa-trash'></i></a></td>
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