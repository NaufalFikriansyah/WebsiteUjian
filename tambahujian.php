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
                
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col">
                            <center>
                            <div class="card-transparent">
                                <div class="card-body">   
                                    <h5>FORM TAMBAH UJIAN <a class="btn btn-sm btn-danger text-white" href="detailujian.php">Kembali</a></h5>
                                    <form action="aksitambahujian.php" method="post" class="w-50">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="i1" required placeholder="NAMA UJIAN">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="i3" required placeholder="LAMA UJIAN (MENIT)">
                                        </div>

                                        <div class="form-group">
                                            <select class="form-control" name="i2" required>
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