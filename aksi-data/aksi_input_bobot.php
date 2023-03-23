<?php

include 'koneksi.php';

if (isset($_POST['save'])){

$value=$_POST['value'];
$id=$_POST['idkriteria'];
$idb=$_POST['idbobot'];




$sql="INSERT INTO bobot(idbobot,idkriteria,valuee) values('".$idb."','".$id."','".$value."')";
$b=$koneksi->query($sql);

}


if($b==true){
    header('location: index.php#services');
}else{
    echo "error!";
}
?>
