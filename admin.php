<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        include "head.php";
    ?>
</head>
<body>

 <nav class="navbar text-white bg-dark justify-content-between" style="height:10vh">
        <form class="form-inline">
            <a class="btn btn-danger btn-sm" href="logout.php">Log-Out</a>
        </form>
    </nav>
       <section class="container-fluid" style="height:90vh">
        <div class="container h-100">
            <div class="row h-100 justify-content-center align-items-center">
                <div class="col">
                    <center>
                    <div class="card bg-dark">
                        <div class="card-body text-white">   
                            <i class='fas fa-user-graduate' style='font-size:155px'></i>
                            <p>
                                <img style="width:40%" src="src\student.png">
                            <h5>SISWA</h5>
                            <a class="btn btn-dark btn-sm btn-block" href="detailsiswa.php">DETAIL</a>
                        </div>
                    </div>
                    </center>
                </div>
                <div class="col">
                    <center>
                    <div class="card bg-dark">
                        <div class="card-body text-white">   
                            
                            <p>
                             <img style="width:40%" src="src\ujian.png">
                            <h5>UJIAN</h5>
                            <a class="btn btn-dark btn-sm btn-block" href="detailujian.php">DETAIL</a>
                        </div>
                    </div>
                    </center>
                </div>
                <div class="col">
                    <center>
                    <div class="card bg-dark">
                        <div class="card-body text-white">   
                           <i class='fas fa-school' style='font-size:155px'></i>
                            <p>
                            <img style="width:40%; height: 125px;" src="src\school.webp">
                            <h5>KELAS</h5>
                            <a class="btn btn-dark btn-sm btn-block" href="detailkelas.php">DETAIL</a>
                        </div>
                    </div>
                    </center>
                </div>
            </div>
        </div>
    </section>

    </div>

<script>
function w3_open() {
  document.getElementById("main").style.marginLeft = "25%";
  document.getElementById("mySidebar").style.width = "25%";
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}
</script>
    <?php
        include "tail.php";
    ?>

</body>
</html>

