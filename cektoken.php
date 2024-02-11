<?php
session_start();
$databaseHost = 'localhost';
$databaseName = 'ujian_online';
$databaseUsername = 'root';
$databasePassword = '';
$ada = 0;
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);
$eror = "Token Salah";
$result = mysqli_query($mysqli, "SELECT * FROM token where kode='" . $_POST['kode'] . "'");
while ($data = mysqli_fetch_array($result)) {
    if ($data['status'] == "1") {
        echo "<script>alert('Token Sudah Terpakai');</script>";
    } else {
        $_SESSION['kode'] = $data['kode'];
        $_SESSION['siswa'] = $data['siswa'];
        $_SESSION['ujian'] = $data['ujian'];
        $resulta = mysqli_query($mysqli, "SELECT s.* FROM soal s join ujian u on(s.ujian=u.no) where s.ujian='" . $data['ujian'] . "' and u.expired is not NULL");
        $row = mysqli_fetch_array($resulta);
        if ($row === null || count($row) == 0) {
            echo "<script>alert('Ujian Belum Di Mulai');</script>";
        } else {
            while ($dataa = mysqli_fetch_array($resulta)) {
                $resultaa = mysqli_query($mysqli, "SELECT * FROM jawaban where soal='" . $dataa['no'] . "'");
                $ind = 0;
                while ($dataaa = mysqli_fetch_array($resultaa)) {
                    if ($ind == 0) {
                        $j = $dataaa['no'];
                    }
                    $ind++;
                }
                $mysqli->query("INSERT INTO riwayat_jawaban values(NULL,'" . $_SESSION['siswa'] . "','" . $j . "','" . $dataa['no'] . "')");
                $mysqli->commit();
            }
            header("Location:ikutiujian.php");
        }
        $ada = 1;
    }
}

if ($ada == 0 && $s == 0) {
    header("Location:index.php?eror=" . $eror . "");
}
?>
