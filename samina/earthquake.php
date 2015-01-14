<?php

require_once('connection.php');

class Earthquake extends Connection {
	 
	 function get() {
        $sql = "SELECT * FROM tbl_datas";
        $res = $this->mysqli->query($sql);
        $data = array();
        while ($row = $res->fetch_array(MYSQLI_ASSOC)) {
            $data[] = $row;
        }
        return $data;
    }


}
?>