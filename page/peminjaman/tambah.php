<?
include("./config/database.php");
?>

<div class="card">
    <div class="card-header">
        Peminjaman
    </div>
    <div class="card-body">
        <form>
            <div class="container">
                <div class="form-group">
                    <div class="row">
                        <div class="col-6">
                            Nama
                            <input type="text" class="form-control" placeholder="Tuliskan Nama Anda Disini">
                        </div>
                        <div class="col-6">
                            Tanggal Pengembalian
                            <input type="date" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-9">
                            Buku
                            <select class="form-control" id="exampleFormControlSelect1">
                                <option></option>
                            </select>
                        </div>
                        <div class="col-3">
                            Status
                            <select class="form-control" id="exampleFormControlSelect1">
                                <option>Aktif</option>
                                <option>Dikembalikan</option>
                            </select>
                        </div>
                        &nbsp;
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary">
                        <input type="reset" class="btn btn-danger">
                        <a href="index.php?page=peminjaman/index.php" class="btn btn-outline-dark">Klik disini untuk kembali</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>