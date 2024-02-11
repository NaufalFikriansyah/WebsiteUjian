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
                                    <h5>DAFTAR JAWABAN</h5>
                                    <p></p>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">JAWABAN</th>

                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $result = mysqli_query($mysqli, "SELECT * from jawaban where soal='".$_GET['no']."'");
                                            $x=1;
                                            while($data = mysqli_fetch_array($result)) {
                                            ?>
                                            <tr>
                                                <th scope="row"><?php echo $x?></th>
                                                <td>
                                                    <?php 
                                                    echo $data['keterangan'];
                                                    if($data['status']==0){
                                                        echo ' <span class="text-danger">X</span>';
                                                    }
                                                    else{
                                                        echo ' <span class="text-success">V</span>';
                                                    }
                                                    ?>
                                                
                                                </td>

                                                <td>
                                                    <a class="btn btn-primary btn-sm text-white" href="ubahjawaban.php?no=<?php echo $data['no']?>&soal=<?php echo $data['soal']?>">UBAH JAWABAN BENAR</a>


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