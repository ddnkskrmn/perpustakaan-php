<?php
if (empty($_GET['id'])) :
    echo "<h3>Error 404</h3><h5>Page Not Found</h5>";
else :

    if (isset($_GET['id'])) {

        $query = mysqli_query($connection, "DELETE FROM buku WHERE id = '{$_GET['id']}'");
        if ($query) {
            echo '<div class="alert alert-success" role="alert">Hapus data berhasil !</div>';
            echo '<a href="index.php?page=buku/index.php" class="btn btn-sm btn-outline-dark">Klik disini untuk kembali</a>';
        } else {
            echo '<div class="alert alert-danger" role="alert">Hapus data gagal !</div>';
        }
    }

endif;
