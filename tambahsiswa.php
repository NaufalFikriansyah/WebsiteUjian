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
                            <center>
                            <div class="card-transparent">
                                <div class="card-body">   
                                    <h5>FORM TAMBAH SISWA <a class="btn btn-sm btn-danger text-white" href="detailsiswa.php">Kembali</a></h5>
                                    
                                          
                                    <form action="aksitambahsiswa.php" method="post" class="w-50">
                                        <div class="form-group row">
                                            <label for="staticEmail" class="col-sm-4 col-form-label">NIS</label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control" name="i1" required placeholder="NIS">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">NAMA</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" name="i2" required placeholder="NAMA">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">KELAS</label>
                                            <div class="col-sm-8">
                                            <select class="form-control" name="i3" required placeholder="NAMA">
                                                <?php
                                                $result = mysqli_query($mysqli, "SELECT * FROM kelas");
                                                $x=1;
                                                while($data = mysqli_fetch_array($result)) {
                                                ?>
                                                <option value="<?php echo $data['no']?>"><?php echo $data['keterangan']?></option>
                                                <?php
                                                $x++;
                                                }
                                                ?>
                                            </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">Tempat Lahir</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" name="i6" required placeholder="Tempat Lahir">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">Tanggal Lahir</label>
                                            <div class="col-sm-8">
                                                <input type="date" class="form-control" name="i7" required placeholder="Tanggal Lahir">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">Jenis Kelamin</label>
                                            <div class="col-sm-8">
                                                <select class="form-control" name="i8" required placeholder="NAMA">
                                                    <option value="Laki-Laki" >Laki-Laki</option>
                                                    <option value="Perempuan" >Perempuan</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">Alamat</label>
                                            <div class="col-sm-8">
                                                <textarea class="form-control" name="i9" required placeholder="alamat siswa"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">Email</label>
                                            <div class="col-sm-8">
                                                <textarea class="form-control" name="i9" required placeholder="emailsiswa@gmail.com"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">PASSOWRD</label>
                                            <div class="col-sm-8">
                                                <input type="password" class="form-control" name="i4" required placeholder="PASSWORD">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-4 col-form-label">RE PASSWORD</label>
                                            <div class="col-sm-8">
                                                <input type="password" class="form-control" name="i5" required placeholder="RE-PASSWORD">
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-block">ADD</button>
                                    </form>

                                    

                                </div>
                            </div>
                            </center>
                            
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