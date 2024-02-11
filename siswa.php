<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        include "head.php";
    ?>
</head>
<body>
    
    <?php
    include "navbarsiswa.php";
    ?>
    <section class="container-fluid p-5" style="height:90vh">
        <div class="container h-100">
            <form class="form-inline" method="post" action="cektoken.php">
                <div class="form-group ">
                    <label class="sr-only">Masukkan Token</label>
                    <input type="text" class="form-control" name="kode" placeholder="Masukkan Token">
                </div>
                <button type="submit" class="btn btn-primary ml-2">IKUTI UJIAN</button>
            </form>
            <?php if(isset($_GET['eror'])){echo $_GET['eror'];}?>
            <hr>
            
            <hr>
            <div class="row">

                <?php
                $query="SELECT  l.*
                FROM    ujian l
                WHERE   NOT EXISTS
                        (
                        SELECT  NULL
                        FROM    nilai_siswa r
                        WHERE   r.ujian = l.no
                        )
                        and l.kelas='".$_SESSION['kelas']."'";
                $query= "select * from ujian where kelas='".$_SESSION['kelas']."'";
                $result = mysqli_query($mysqli,$query);
                while($data = mysqli_fetch_array($result)) {
                    $nilai='';
                    $query= "select * from nilai_siswa where ujian='".$data['no']."' and siswa='".$_SESSION['nis']."'";
                    $resulta = mysqli_query($mysqli,$query);
                    while($dataa = mysqli_fetch_array($resulta)) {
                        $nilai = $dataa['nilai'];
                    }
                ?>
                <div class="col-4 mb-3">
                    
                    <div class="card">
                        <div class="card-body">   
                            <?php echo $data['keterangan']?>
                            <?php
                            if($nilai=="" && $data['status']==1){
                            ?>
                            <a class="btn btn-primary btn-sm btn-block mt-2 text-white" >SILAHKAN MASUKKAN TOKEN !</a>
                            <?php
                            }
                            else{
                                if($data['status']==0){
                                    echo'<a class="btn btn-danger btn-sm btn-block mt-2 text-white">Belum waktu ujian</a>';
                                }
                                else{
                                    echo'<a class="btn btn-success btn-sm btn-block mt-2 text-white">'.$nilai.'</a>';
                                }
                                
                            }
                            ?>
                        </div>
                    </div>
                    
                </div>
                <?php
                    }
                ?>
                
                

            </div>
        </div>
    </section>
    <?php
        include "tail.php";
    ?>

</body>
</html>