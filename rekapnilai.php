<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        include "head.php";
        if(isset($_POST['kelas'])){
            $query = "INSERT INTO kelas values(NULL,'".$_POST['keterangan']."')";
            $mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
            $mysqli -> query($query);
            $mysqli -> commit();
        }
    ?>

</head>
<body>
    
    <?php
    include "navbaradmin.php";
    ?>
    <section class="container-fluid p-2" style="height:190vh;">
        <div class="card h-1200 ">
            <div class="card-body h-1200">
                <div class="container h-1200" style="overflow:scroll" >
                    <div class="row h-100 justify-content-center align-items-center">
                        <div class="col">
                            
                            <div class="card-transparent">
                                <div class="card-body " >   
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>NIS</th>
                                                <th>NAMA</th>
                                                <th>UJIAN</th>
                                                <th>NILAI</th>
                                                <th>Keterangan</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                        $result = mysqli_query($mysqli, "SELECT * FROM siswa where kelas='".$_GET['no']."'");
                                        
                                        while($data = mysqli_fetch_array($result)) {
                                            echo "<tr>";
                                            echo "<td>".$data['nis']."</td>";
                                            echo "<td>".$data['nama']."</td>";
                                            echo "<td></td><td></td><td></td>";
                                            echo "</tr>";
                                            $resulta = mysqli_query($mysqli, "SELECT ns.status,ns.nilai,u.keterangan FROM nilai_siswa ns join ujian u on (ns.ujian=u.no) where ns.siswa='".$data['nis']."'");
                                        
                                            while($dataa = mysqli_fetch_array($resulta)) {
                                                echo "<tr>";
                                                echo "<td></td><td></td>";
                                                echo "<td>".$dataa['keterangan']."</td>";
                                                echo "<td>".$dataa['nilai']."</td>";
                                                if($dataa['status']=="1"){
                                                    echo "<td>Mengikuti Ujian</td>";
                                                }
                                                else{
                                                    echo "<td>Tidak/Belum Mengikuti Ujian</td>";
                                                }
                                                echo "</tr>";
                                            }
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