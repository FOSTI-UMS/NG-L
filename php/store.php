<?php

// import database connection process
require_once 'con.php';

// variable initiation and get data from input, we use POST method
$nama = $_POST['nama'];
$tempat = $_POST['tempat'];
$kelas = $_POST['kelas'];
$submit = $_POST['submit'];


if (isset($submit)) {
	// create query to insert data
	$query = "insert into siswa(nama, tempat, kelas) values('$nama', '$tempat', '$kelas')";
	// run query
	$result = mysqli_query($con, $query);
	// if data insert well
	if ($result) {
		// show 'Masuk datanya coy'
		echo "Masuk datanya coy";
	}
	// if not well
	else{
		// show 'Data ga masuk coy'
		echo "Data ga masuk coy";	
	}
}

?>