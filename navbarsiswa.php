<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>


<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <!-- Brand/logo -->
  
    
  
  <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="navbar-brand" href="#">
          <img src="logo.jpg" alt="logo" style="width:40px;">
        </a>
      </li>
      <li class="nav-item">
      
        <a class="navbar-brand" ><?php echo $_SESSION['nama']?></a>
      </li>

    </ul>

  <form class="form-inline my-2 my-lg-0">
    <a class="btn btn-danger btn-sm" href="logout.php">Log-Out</a>
  </form>
</nav>