<?php
include 'koneksi.php';
$dataedit = mysqli_query($koneksi, "SELECT * from kriteria where idkriteria='" . $_GET['idkriteria'] . "'");
$result = mysqli_fetch_array($dataedit);
?>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Input Data Kriteria</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
  <body  class="bg-success bg-opacity-10">

  <div class="p-5">




<!-- Form 1 -->
<div class="form-1-container section-container">
    <div class="container">
        <div class="row">
            <div class="col form-1 section-description wow fadeIn">
                <h2>Form Data Kriteria</h2>
                <div class="divider-1 wow fadeInUp"><span></span></div>
                <p>Kriteria dari legen layak minum dan legen sudah terfermentasi.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 offset-md-1 form-1-box wow fadeInUp">
 
                <form action="" method="POST">
          
                    <fieldset class="form-group border p-3">
                        <legend class="w-auto px-2">Input Data Kriteria</legend>
                       


                        
                   
                        <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="idkriteria" value="<?php echo $result['idkriteria'] ?>">
                                </div>
                                </div>    

                     
                             
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-6" type="text" name="nmkriteria" value="<?php echo $result['nmkriteria'] ?>">
                                </div>
                                </div>    
                       
                        <br>
                        <button type="submmit" name="edit" class="btn btn-primary" >Submit</button>
                    </fieldset>


                    </div>





                    <?php
include 'koneksi.php';
if (isset($_POST['edit'])) {
    $update = mysqli_query($koneksi, "UPDATE kriteria SET
idkriteria='" . $_POST['idkriteria'] . "',nmkriteria='" . $_POST['nmkriteria'] . "' where idkriteria='" . $_GET['idkriteria'] . "'");
    if ($update) {
        echo "edit berhasil";
        header('location:/prak_si/index.php#why-us');
    } else {
        echo "gagal";
    }

}
?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>
