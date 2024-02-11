
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">
    <img src="logo.jpg" alt="logo" style="width:40px;">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="admin.php">Home</a>
      </li>
      <li class="nav-item">
      
        <a class="nav-link" href="detailsiswa.php">Siswa</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="detailujian.php">Ujian</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="detailkelas.php">Kelas</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda Yakin ingin logout ?');" href="logout.php">Log-Out</a>
    </form>
  </div>
</nav>