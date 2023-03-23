<?php

include 'koneksi.php';

if (isset($_POST['save'])){

$nmkriteria=$_POST['nmkriteria'];
$id=$_POST['idkriteria'];



$sql="INSERT INTO kriteria (idkriteria,nmkriteria) values ('".$id."','".$nmkriteria."')";
$b=$koneksi->query($sql);



if($b==true){
    header('location: index.php#why-us');
}else{
    echo "error!";
}





}
?>
