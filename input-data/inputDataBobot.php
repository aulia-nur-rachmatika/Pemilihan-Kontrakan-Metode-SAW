<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Input Data Alternatif</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
  <body  class="bg-success bg-opacity-10">

  <div class="p-5">



  <?php
include 'koneksi.php';
?>
<!-- Form 1 -->
<div class="form-1-container section-container">
    <div class="container">
        <div class="row">
            <div class="col form-1 section-description wow fadeIn">
                <h2>Form Data Bobot</h2>
                <div class="divider-1 wow fadeInUp"><span></span></div>
           
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 offset-md-1 form-1-box wow fadeInUp">
 
                <form action="aksi_input_bobot.php" method="post">
          
                    <fieldset class="form-group border p-3">
                        <legend class="w-auto px-2">Input Data Bobot</legend>
                        
                   
                        <div class="form-group">
                            <label for="value">ID Bobot:</label>
                            <input type="text" class="form-control username" id="idkriteria" placeholder="ID bobot" name="idbobot">
                        </div>



                        <div class="form-group">
                            <label for="idkriteria"></label>
                            <select class="form-select" aria-label="Default select example" name="id">

                                <option selected>View Kriteria<option>
                               
                               <?php
                                $qry = "SELECT * from kriteria";
                                $f = $koneksi->query($qry);
                                while ($g = $f->fetch_array()) {?>
                                
                                
                         <option value="<?php echo $g['idkriteria']; ?>">
                        
                         <?php echo $g['idkriteria']; ?>
                         <?php echo '-'; ?>
                         <?php echo $g['nmkriteria'] ?>
                                
                            </option>
                                        <?php }?>
                                
                              </select>
                        </div>

                        <div class="form-group">
                            <label for="value">ID Kriteria:</label>
                            <input type="text" class="form-control username" id="idkriteria" placeholder="ID Kriteria" name="idkriteria">
                        </div>
                       

                        <div class="form-group">
                            <label for="value">Value:</label>
                            <input type="text" class="form-control username" id="nmkriteria" placeholder="Value" name="value">
                        </div>
                       
                        <br>
                        <button type="submmit" name="save" class="btn btn-primary" >Submit</button>
                    </fieldset>
                    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>
