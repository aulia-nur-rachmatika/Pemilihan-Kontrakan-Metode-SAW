<?php

include 'koneksi.php';

if (isset($_POST['save'])){


$id=$_POST['idskala'];    
$value=$_POST['value'];    
$keterangan=$_POST['keterangan'];


$sql="INSERT INTO skala(idskala,valuee,keterangan) values ('".$id."','".$value."','".$keterangan."')";
$b=$koneksi->query($sql);



if($b==true){
    header('location: index.php#team');
}else{
    echo "error!";
}

}
?>
