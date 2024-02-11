<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        include "head.php";
    ?>
    <link rel="shortcut icon" href ="logo.jpg">
     <title>Aplikasi Ujian MA 03 AL-MA'ARIF</title>
</head>
<body>
    
   <section class="container-fluid" style="height:100vh">
        <div class="container h-100">
            <div class="row h-100 justify-content-center align-items-center">
                <div class="col p-5">
                    <center>
                    <div class="card">
                        <div class="card-body">   
                            <img style="width:40%" src="logo.jpg">
                            <p>
                            <h5>Selamat Datang</h5>
                            <hr>
                            <form action="login.php" method="post">
                                <div class="form-group">
                                    
                                    <input type="text" class="form-control" name="un" required placeholder="USERNAME">
                                </div>
                                <div class="form-group">
                                    
                                    <input type="password" class="form-control" rows="6" name="pass" required placeholder="PASSWORD">
                                </div>
                
                                <button type="submit" class="btn btn-primary btn-block">LOGIN</button>
                            </form>   
                        </div>
                    </div>
                    </center>
                </div>
                <div class="col p-5">
    
<!--                             <form class="form-inline" method="post" action="cektoken.php">
                                <div class="form-group ">
                                    <label class="sr-only">Masukkan Token</label>
                                    <input type="text" class="form-control" name="kode" placeholder="Masukkan Token">
                                </div>
                                <button type="submit" class="btn btn-primary ml-2">IKUTI UJIAN</button>
                            </form>
                            <?php if(isset($_GET['eror'])){echo $_GET['eror'];}?> -->

                            
                        </div>
                    </div>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <?php
        include "tail.php";
    ?>
</body>
</html>