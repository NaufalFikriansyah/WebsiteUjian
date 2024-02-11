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
    <section class="container-fluid p-2" style="height:90vh;" style="width:300vh">
        <div class="card h-100 ">
            <div class="card-body h-100">
                <div class="container h-100" style="overflow:scroll">
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col">
                            
                            <div class="card-transparent">
                                <div class="card-body">   
                                    <h5>DAFTAR SISWA</h5> 

                                    <p></p>
                                    <table class="table" style="width:100%">
                                        <thead>
                                            <tr>
                                               <th scope="col">#</th>
                                                <th scope="col">NIS</th>
                                                <th scope="col">NAMA</th>
                                                <th scope="col">KELAS</th>
                                                <th scope="col">TEMPAT LAHIR</th>
                                                <th scope="col">TANGGAL LAHIR</th>
                                                <th scope="col">JENIS KELAMIN</th>
                                                <th scope="col">ALAMAT</th>
                                                
                                                      
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $query = "SELECT s.*,k.keterangan FROM siswa s join kelas k on(s.kelas=k.no) where k.no='".$_GET['no']."'";

                                            $result = mysqli_query($mysqli,$query);
                                            $x=1;
                                            while($data = mysqli_fetch_array($result)) {
                                            ?>
                                            <tr>
                                                <th scope="row"><?php echo $x?></th>
                                                <td><?php echo $data['nis']?></td>
                                                <td><?php echo $data['nama']?></td>
                                                <td><?php echo $data['keterangan']?></td>
                                                <td><?php echo $data['tempat_lahir']?></td>
                                                <td><?php echo $data['tanggal_lahir']?></td>
                                                <td><?php echo $data['jenis_kelamin']?></td>
                                                <td><?php echo $data['alamat']?></td>
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