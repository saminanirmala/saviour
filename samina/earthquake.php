<?php

require_once('connection.php');

class Earthquake extends Connection {
	 function get() {
		 echo'<pre>';
        $sql = "SELECT * FROM tbl_datas WHERE date>2013/01/01";
        $res = $this->mysqli->query($sql);
        $data = array();
        while ($row = $res->fetch_array(MYSQLI_ASSOC)) {
            $data[] = $row;
        }
        return $data;
    }


}
?>