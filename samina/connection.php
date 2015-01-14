<?php
class Connection{
private $host="localhost";
private $db="earthquake";
private $user="root";
private $pass="";
protected $mysqli;

function __construct(){
$this->mysqli=new MySQLi($this->host,$this->user,$this->pass,$this->db);
if($this->mysqli->error)
{
echo $this->mysqli->error;

}
else{



}
}
}
?>