<?php include 'header.php';  ?>
<br>
<script>
function myFunction() {
    window.print();
}
</script>
<h1>Hasil Diagnosa</h1><br>
<div class="container">
  <button style="float:right;" class="btn btn-success" onclick="myFunction()">CETAK</button>
</div>

<div class="container col-6">
  <div class="input-group mb-3">
    <div class="input-group-prepend">
        <span class="input-group-text"><h5>BAGIAN KERUSAKAN</h5></span>
    </div>
    <textarea class="form-control" style="color:red;" rows="3" readonly>Tidak Dapat dipastikan kerusakan</textarea>
  </div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text"><h5>SOLUSI KERUSAKAN</h5></span>
  </div>
  <textarea class="form-control" style="color:red;" rows="3"  readonly>Datanglah ke tempat sevice terdekat </textarea>
</div>
</div>

</div>
</div>
<br>


 <?php
 include 'footer.php';

