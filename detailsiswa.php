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
    <section class="container-fluid p-2" style="height:100vh;" style="width:1000vh">
        <div class="card h-100 ">
            <div class="card-body h-100">
                <div class="container h-100" style="overflow:scroll">
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col">
                            
                            <div class="card-transparent">
                                <div class="card-body">   
                                    <h5>DAFTAR SISWA <a class="btn btn-sm btn-primary text-white" href="tambahsiswa.php">TAMBAH SISWA</a></h5> 
                                    <form class="form-inline" method="POST" action="">
                                        <input class="form-control mr-2" type="text" name="cari"  placeholder="Nis,Nama,atau Kelas"> 
                                        <button type="submit" class="btn btn-success"><i class="fa fa-search"></i></button>
                                    </form>
                                    <p></p>
                                    <table class="table" style="width:200%">
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
                                    
                                                <th scope="col" style="width:20%">AKSI</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $query = "SELECT s.*,k.keterangan FROM siswa s join kelas k on(s.kelas=k.no)";
                                            if(isset($_POST['cari'])){
                                                $query = "SELECT s.*,k.keterangan FROM siswa s join kelas k on(s.kelas=k.no) where s.nama LIKE '%".$_POST['cari']."%' or s.nis LIKE '%".$_POST['cari']."%' or s.kelas LIKE '%".$_POST['cari']."%'";
                                            }
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
                                        
                                                <td><a class="btn btn-sm btn-primary text-white" href="updatesiswa.php?no=<?php echo $data['nis']?>"><i class='fas fa-edit'></i></a>
                                                <a class="btn btn-sm btn-danger"" onclick="return confirm('Apakah Anda Yakin Untuk Menghapus ?');" href="hapussiswa.php?no=<?php echo $data['nis']?>" >
          

        
          <i class='fas fa-trash'></i></a>
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