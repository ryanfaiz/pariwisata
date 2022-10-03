<?php
    session_start();
    require "../../script/auth.php";
    require "../../script/conn.php";

    $id = $_GET["id"];

    $result = mysqli_query($conn, "DELETE FROM acara WHERE id = $id");

    $_SESSION["type"] =  "data berhasil dihapus";
    $_SESSION["dst"] = "/admin/acara";

    header("Location: /admin/berhasil.php");
    exit;
?>