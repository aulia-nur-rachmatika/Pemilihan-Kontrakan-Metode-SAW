<?php

include 'koneksi.php';

if (isset($_POST['save'])){

$idm=$_POST['idmatrix'];
$ida=$_POST['idalternatif'];
$idb=$_POST['idbobot'];
$ids=$_POST['idskala'];




$sql="INSERT INTO matrixkeputusan(idmatrix,idalternatif,idbobot,idskala) values('".$idm."','".$ida."','".$idb."','".$ids."')";
$b=$koneksi->query($sql);

}


if($b==true){
    header('location: index.php#about');
}else{
    echo "error!";
}
?>
