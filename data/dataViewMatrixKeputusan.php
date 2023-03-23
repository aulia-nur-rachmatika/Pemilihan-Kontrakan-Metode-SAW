<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data View VMatrix Keputusan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>

  <body class="bg-success bg-opacity-10">


<nav class="navbar bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
            <img src="logo.jpeg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
            Database
          </a>
        </div>
      </nav>
      <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
          
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Data View VMatrix Keputusan</a>
              </li>

              <li class="nav-item">
                <a class="nav-link " aria-current="page" href="home.html" target="_blank">Home</a>
              </li>
            
         
              
            </ul>
           
          </div>
        </div>
      </nav>
      
<div class="p-5">

<br>

    <fieldset class="border p-2">
    <div class="bg-secondary  bg-opacity-50">

   <legend  class="w-auto">Data View  VMatrix Keputusan</legend>
   <br>
<div class="mx-auto w-75" >
 
</div>
    <table class="table table-striped table-hover mx-auto w-75">


  <thead class="bg-success p-2 text-dark bg-opacity-50">
    <tr>
      <th scope="col">No</th>
      <th scope="col">ID Matrix</th>
      <th scope="col">ID Alternatif</th>
      <th scope="col">Nama Alternatif</th>
      <th scope="col">ID Kriteria</th>
      <th scope="col" >Nama Kriteria</th>
      <th scope="col">ID Bobot</th>            
      <th scope="col">Value</th>
      <th scope="col">Nilai</th>       
     <th scope="col">Keterangan</th>

    
    </tr>
  </thead>
</div>
  <tbody>
  <?php
include "koneksi.php";
$no=1;
$sql="Select * from vmatrixkeputusan order by idmatrix";
$a=$koneksi->query($sql);
while($b=$a->fetch_array()){
    ?>
    <tr>
        <td><?php echo $no++;?></td>
        <td><?php echo $b['idmatrix'];?></td>
        <td><?php echo $b['idalternatif']?></td>
        <td><?php echo $b['nmalternatif']?></td>
        <td><?php echo $b['idkriteria']?></td>
        <td><?php echo $b['nmkriteria']?></td>
        
        <td><?php echo $b['idbobot']?></td>
        <td><?php echo $b['value']?></td>
        <td><?php echo $b['nilai']?></td>
        <td><?php echo $b['keterangan']?></td>
        
    </tr>
    <?php
} ?>
  </tbody>
</table>

</fieldset>
</div>

</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>

  </body>
  </div>
</html>
