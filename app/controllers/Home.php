<?php

namespace App\Controllers;

use Core\View;
use app\models\sumbangan;
class Home extends \Core\Controller
{
    public function index()
    {
        $hasil = sumbangan::getName();
        View::renderTemplate("home/index.html", [
            'judul' => 'Donasi COVID-19',
            'jenis' => $hasil
        ]);
    }

    public function inputdata()
    {   
        $pesan = "";
        $jsumbang = $_POST['jenisSumbangan'];
        $jumlah = $_POST['jumlah'];
        if(!isset($_POST['submit'])) return;
        
        foreach($jumlah as $jm){
            if($jm == "" || $jm == 0 ) $pesan = "Tolong isi Jumlah Sumbangan anda";
        }
        foreach($jsumbang as $js){
            if($js == "") $pesan = "Tolong Jenis Sumbangan anda";
        }
        if($_POST['name'] == "") $pesan = "Tolong isi nama anda";
        if($pesan != ""){
            $hasil = sumbangan::getName();
            View::renderTemplate("home/index.html", [
            'judul' => 'Sumbangan COVID-19',
            'jenis' => $hasil,
            'alert' => $pesan
        ]);
        return;
        }

        if(!isset($_POST['submit'])) return;

        $userid = sumbangan::setUser( $_POST['name'], $_POST['gender'] );

        
        $iter = 0;

        foreach($jsumbang as $js){
            $jsid = sumbangan::isThere($js);

            if( $jsid >= 1){
                $done = sumbangan::setSumbangan($userid,$jsid,$jumlah[$iter]);
            }
            else{
                $jsid = sumbangan::setJS($js);
                $done = sumbangan::setSumbangan($userid, $jsid[0], $jumlah[$iter]);
            }
            $iter++;
        }
        $hasil = sumbangan::getName();
        View::renderTemplate("home/index.html", [
            'judul' => 'Donasi COVID-19',
            'jenis' => $hasil,
            'pesan' => 'Terima kasih, Sumbangan anda telah berhasil dimasukkan',
        ]);

    }
}