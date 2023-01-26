<?php
if (empty($_GET['id'])) :
    echo "<h3>Error 404</h3><h5>Page Not Found</h5>";
else :

    if (isset($_POST['simpan'])) {
        $query = mysqli_query($connection, "UPDATE user SET username = '{$_POST['username']}', email = '{$_POST['email']}' WHERE id = '{$_GET['id']}'");
        if ($query) {
            echo '<div class="alert alert-success" role="alert">Edit data berhasil !</div>';
        } else {
            echo '<div class="alert alert-danger" role="alert">Edit data gagal !</div>';
        }
    }

    $query = mysqli_query($connection, "SELECT * FROM user WHERE id = '{$_GET['id']}'");
    $model = mysqli_fetch_object($query);

?>
    <div class="card">
        <div class="card-header">
            Edit User
        </div>
        <div class="card-body">
            <form action="" method="post">
                <div class="container">
                    <div class="row">
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="username">Nama</label>
                                <input type="text" class="form-control" name="username" id="username" value="<?= $model->username ?>">
                            </div>
                            <div class="mb-3">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" name="email" id="email" value="<?= $model->email ?>">
                            </div>
                            <div class="d-flex align-items-start">
                                <div class="col-2">
                                    <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                                </div>
                                <div class="col-6">
                                    <a href="index.php?page=anggota/index.php" class="btn btn-outline-dark">Klik disini untuk kembali</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
<?php endif; ?>