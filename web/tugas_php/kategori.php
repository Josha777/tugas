<?php
 $nama = "Adhi";
    $tinggi_badan = "170 cm";
    $berat_badan = "65 kg";
    $bmi;


 if ($berat_badan <= 65 && $tinggi_badan >= "170cm") {
     $bmi = "Kurus";s
 }
 elseif ($berat_badan <= 65 && $tinggi_badan >= "170cm") {
     $bmi = "Sedang";
 }
 elseif ($berat_badan <= 65 && $tinggi_badan >= "170cm") {
     $bmi = "gemuk";
 }
 else{
     $bmi ="berisi";
 }
 echo"hallo,$nama.nilai BMI anda adalah $berat_badan,anda termasuk $bmi";

?>

