<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Input Data Skala</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
  <body  class="bg-success bg-opacity-10">

  <div class="p-5">




<!-- Form 1 -->
<div class="form-1-container section-container">
    <div class="container">
        <div class="row">
            <div class="col form-1 section-description wow fadeIn">
                <h2>Form Data Skala</h2>
                <div class="divider-1 wow fadeInUp"><span></
        </div>
        <div class="row">
            <div class="col-md-10 offset-md-1 form-1-box wow fadeInUp">
 
                <form action="aksiInputSkala.php" method="post">
          
                    <fieldset class="form-group border p-3">
                        <legend class="w-auto px-2">Input Data Skala</legend>
                        

                        <div class="form-group">
                            <label for="idskala">ID Skala:</label>
                            <input type="text" class="form-control username" id="nmkriteria" placeholder="ID Skala" name="idskala">
                        </div>
                       

                        <div class="form-group">
                            <label for="value">Value:</label>
                            <input type="text" class="form-control username" id="nmkriteria" placeholder="ID Skala" name="value">
                        </div>
                       
                        <div class="form-group">
                            <label for="keterangan">Keterangan:</label>
                            <input type="text" class="form-control username" id="nmkriteria" placeholder="ID Skala" name="keterangan">
                        </div>
                       

                        <br>
                        <button type="submmit" name="save" class="btn btn-primary" >Submit</button>
                    </fieldset>
                    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>
