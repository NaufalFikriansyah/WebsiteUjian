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

    <section class="container-fluid p-2" style="height:100vh;">
        <div class="card h-100 ">
            <div class="card-body h-100">
                <div class="container h-100" style="overflow:scroll">
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col">
                            <a class="btn btn-sm btn-warning text-white" target="_blank" href="printtoken.php?no=<?php echo $_GET['no']?>">Print Token</a>  
                            <div class="card-transparent">
                                <div class="card-body">   
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">TOKEN</th>
                                                <th scope="col">NIS</th>
                                                <th scope="col">NAMA</th>
                                                <th scope="col">KETERANGAN</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $query = "SELECT t.*,s.nama from token t join siswa s on(t.siswa=s.nis)where t.ujian='".$_GET['no']."'";
  
                                            $result = mysqli_query($mysqli,$query);
                                            $x=1;
                                            while($data = mysqli_fetch_array($result)) {
                                            ?>
                                            <tr>
                                                <th scope="row"><?php echo $data['kode']?></th>
                                                <td><?php echo $data['siswa']?></td>
                                                <td><?php echo $data['nama']?></td>
                                                <td>
                                                <?php
                                                 if($data['status']=="1"){
                                                    echo "Sudah Terpakai";
                                                 }
                                                 else{
                                                    echo "Belum Terpakai";
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