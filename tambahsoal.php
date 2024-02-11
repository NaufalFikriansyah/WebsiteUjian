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
                                    <h5>FORM TAMBAH SOAL <a class="btn btn-sm btn-danger text-white" href="detailsoal.php?no=<?php echo $_GET['no']?>">Kembali</a></h5>
                                    <form action="aksitambahsoal.php" method="post" class="w-50">
                                        <div class="form-group" hidden>
                                            <input class="form-control" name="i0" value="<?php echo $_GET['no']?>"/>
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" name="i1" placeholder="Masukan Pertanyaan"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="i2" required placeholder="Jawaban a">
                                        </div>
     
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="i3" required placeholder="Jawaban b">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="i4" required placeholder="Jawaban c">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="i5" required placeholder="Jawaban d">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="i6" required placeholder="Jawaban e">
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" name="i7">
                                                <option value="2">Jawaban a Benar</option>
                                                <option value="3">Jawaban b Benar</option>
                                                <option value="4">Jawaban c Benar</option>
                                                <option value="5">Jawaban d Benar</option>
                                                <option value="6">Jawaban e Benar</option>
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