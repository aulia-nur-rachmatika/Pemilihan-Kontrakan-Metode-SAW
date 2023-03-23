<?php
$host = "localhost";
$username="root";
$password="";
$database="metodesaw";
$koneksi=mysqli_connect($host,$username,$password,$database);

if ($koneksi){
    echo"";
}else {
    echo "Tidak berhasil masuk ke database";
}
?>