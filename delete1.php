<?php
require 'db.php';
$id = $_GET['id'];


$sql = 'DELETE FROM enquiry WHERE user_id=:id';


$statement = $connection->prepare($sql);

if ($statement->execute([':id' => $id])) {
  header("refresh:0,url=index1.php");
}
?>