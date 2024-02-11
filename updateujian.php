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
                                    <h5>FORM EDIT UJIAN <a class="btn btn-sm btn-danger text-white" href="detailujian.php">Kembali</a></h5>
                                    <?php
                                            $result = mysqli_query($mysqli, "SELECT * from ujian where no='".$_GET['no']."'");
                                            $x=1;
                                            while($data = mysqli_fetch_array($result)) {
                                            ?>
                                    <form action="aksiupdateujian.php" method="post" class="w-50">

                                        <input value="<?php echo $data['no']?>" name="no" hidden>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-3 col-form-label">Nama ujian </label>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="i1" required placeholder="NAMA UJIAN" value="<?php echo $data['keterangan'] ?>">
                                         </div> </div>
                                          <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-3 col-form-label">Waktu ujian </label>

                                        <div class="form-group">
                                            <input type="text" class="form-control"  value="<?php echo $data['waktu'] ?>" name="i3" required placeholder="LAMA UJIAN (MENIT)">
                                        </div></div>
                                         <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-3 col-form-label">Kelas </label>

                                        <div class="form-group">
                                            <select class="form-control" name="i2" required>
                                            <?php
                                            $resulta = mysqli_query($mysqli, "SELECT * FROM kelas");
                                            $x=1;
                                            while($dataa = mysqli_fetch_array($resulta)) {
                                            ?>

                                            <option <?php if ($data['kelas']==$dataa['no']){ echo "selected";}?> value="<?php echo $dataa['no']?>"><?php echo $dataa['keterangan']?></option>
                                            <?php
                                            $x++;
                                            }
                                            ?>
                                            </select>
                                        </div>
                                        </div>

                        
                                        <button type="submit" class="btn btn-primary btn-block">UPDATE</button>
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