<?php
include 'koneksi.php';
if(isset($_POST['submit'])){
	$qry='select id from tb_gejala where ';
	array_pop($_POST);
	$rule_input=array();
	foreach ($_POST as $where) {
		$qry.=$where."=1 and ";
		array_push($rule_input,$where);
	}
	$qry.="1=1";
	$data=mysqli_query($kon,$qry);
	$id='';
	$rule=array(
		array("G001","G002","G003","G004","G005"),
		array("G006","G007","G008","G009"),
		array("G010","G011","G012","G013","G014","G015"),
		array("G016","G017","G018","G019"));
		
	$status=false;
	for ($i=0; $i <1 ; $i++) {
		$result=($rule_input==$rule[$i]);
		if ($result) {
			$status=true;
		}
	}
	
	if($status==true){
		while ($d=mysqli_fetch_array($data)) {
			$id=$d['id'];
		}
		$kerusakan="select * from tb_kerusakan where id=$id";
		$db=mysqli_query($kon,$kerusakan);
		while ($d=mysqli_fetch_array($db)) {
			$bagian=$d['bagian'];
			$solusi=$d['solusi'];
			include 'hasil.php';
		}

	}else{
				include 'error.php';
	}
}
?>
