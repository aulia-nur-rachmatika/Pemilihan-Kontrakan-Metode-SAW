<?php

include 'koneksi.php';

if (isset($_POST['save'])){


$id=$_POST['idalternatif'];    
$nmalternatif=$_POST['nmalternatif'];


$sql="INSERT INTO alternatif (idalternatif,nmalternatif) values ('".$id."','".$nmalternatif."')";
$b=$koneksi->query($sql);



if($b==true){
    header('location: index.php#portfolio');
}else{
    echo "error!";
}

}
?>
