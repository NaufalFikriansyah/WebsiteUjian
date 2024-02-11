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
                                    <h5>FORM UPDATE SISWA <a class="btn btn-sm btn-danger text-white" href="detailsiswa.php">Kembali</a></h5>
                                    <?php
                                        $resulta = mysqli_query($mysqli, "SELECT s.*,k.* FROM siswa s join kelas k on(s.kelas=k.no) where s.nis='".$_GET['no']."'");
                                        while($dataa = mysqli_fetch_array($resulta)) {
                                    ?>
                                    <form action="aksiupdatesiswa.php" method="post" class="w-50">
                                        <div class="form-group" hidden>
                                            <input type="number" value="<?php echo $dataa['nis']?>" class="form-control" name="i0" required placeholder="NIS">
                                        </div>
                                        <div class="form-group">
                                            <input type="number" value="<?php echo $dataa['nis']?>" class="form-control" name="i1" required placeholder="NIS">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" value="<?php echo $dataa['nama']?>" class="form-control" name="i2" required placeholder="NAMA">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" value="<?php echo $dataa['tempat_lahir']?>" class="form-control" name="i6" required placeholder="NAMA">
                                        </div>
                                        <div class="form-group">
                                            <input type="date" value="<?php echo $dataa['tanggal_lahir']?>" class="form-control" name="i7" required placeholder="NAMA">
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" name="i8" required placeholder="NAMA">
                                                <option value="Laki-Laki" <?php if($dataa['jenis_kelamin']=="Laki-Laki"){echo "selected";}?> >Laki-Laki</option>
                                                <option value="Perempuan" <?php if($dataa['jenis_kelamin']=="Perempuan"){echo "selected";}?>>Perempuan</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" name="i9" required><?php echo $dataa['alamat']?></textarea>
                                        </div>
                                        <div class="form-group">
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
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="i4" required placeholder="PASSWORD">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="i5" required placeholder="RE-PASSWORD">
                                        </div>
                        
                                        <button type="submit" class="btn btn-primary btn-block">ADD</button>
                                    </form>  
                                    <?php
                                    }
                                    ?>
                                    

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