<?php
    session_start();
    require "../../script/auth.php";
    require "../../script/conn.php";

    $id = $_GET["id"];

    $result = mysqli_query($conn, "SELECT * FROM tempat WHERE id = $id");

    $row = mysqli_fetch_row($result);

    if ( isset($_POST["submit"])) {
        $id = $_POST["id"];
        $provinsi = htmlspecialchars($_POST["provinsi"]);
        $nama = htmlspecialchars($_POST["nama"]);
        $kategori = htmlspecialchars($_POST["kategori"]);
        $gmap = htmlspecialchars($_POST["gmap"]);
        $buka = htmlspecialchars($_POST["buka"]);
        $tutup = htmlspecialchars($_POST["tutup"]);
        $gambar1 = htmlspecialchars($_POST["gambar1"]);
        $gambar2 = htmlspecialchars($_POST["gambar2"]);
        $gambar3 = htmlspecialchars($_POST["gambar3"]);
        $youtube = htmlspecialchars($_POST["youtube"]);

        $insert = "UPDATE `tempat` SET `id`='$id',`provinsi`='$provinsi',`nama`='$nama',`kategori`='$kategori',`gmap`='$gmap',`buka`='$buka',`tutup`='$tutup',`gambar1`='$gambar1',`gambar2`='$gambar2', `gambar3`='$gambar3', `youtube`='$youtube' WHERE id = $id";

        mysqli_query($conn, $insert);

        $_SESSION["type"] =  "data berhasil diubah";
        $_SESSION["dst"] = "/admin/tempat";

        header("Location: /admin/berhasil.php");
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Data | Kementerian Pariwisata</title>
    <link rel="stylesheet" href="/style/input.css">
    <link rel="icon" href="/favicon.ico">
</head>
<body>
    <h1>Tambah Data Tempat Wisata</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" id="id" value="<?= $row[0]; ?>">

        <h3>Provinsi</h3>
        <input type="text" name="provinsi" id="provinsi" required autocomplete="off" value="<?= $row[1]; ?>">

        <h3>Nama Tempat Wisata</h3>
        <input type="text" name="nama" id="nama" required autocomplete="off" value="<?= $row[2]; ?>">

        <h3>Kategori Tempat Wisata</h3>
        <input type="text" name="kategori" id="kategori" required autocomplete="off" value="<?= $row[3]; ?>">

        <h3>Link Google Maps</h3>
        <input type="url" name="gmap" id="gmap" required autocomplete="off" value="<?= $row[4]; ?>">

        <h3>Jam Buka Operasional</h3>
        <input type="time" name="buka" id="buka" required autocomplete="off" value="<?= $row[5]; ?>">

        <h3>Jam Tutup Operasional</h3>
        <input type="time" name="tutup" id="tutup" required autocomplete="off" value="<?= $row[6]; ?>">
        
        <h3>Link Gambar 1</h3>
        <input type="url" name="gambar1" id="gambar1" required autocomplete="off" value="<?= $row[7]; ?>">

        <h3>Link Gambar 2</h3>
        <input type="url" name="gambar2" id="gambar2" required autocomplete="off" value="<?= $row[8]; ?>">

        <h3>Link Gambar 3</h3>
        <input type="url" name="gambar2" id="gambar2" required autocomplete="off" value="<?= $row[9]; ?>">

        <h3>Link Video YouTube</h3>
        <input type="url" name="youtube" id="youtube" required autocomplete="off" value="<?= $row[10]; ?>">

        <br><br>
        <button type="submit" name="submit">Simpan Perubahan</button>
    </form>

</body>
</html>