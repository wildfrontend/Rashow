<?php
       ini_set("display_errors","On");
      date_default_timezone_set("Asia/Taipei");

     $link = array(
                               'host' => "10.131.67.80 ",
                               'port' => "3306",
                               'account' => "redhat",
                               'password' => "redhat",
                               'dbname' => "rashow"
                              );

      $dbconnect =  'mysql:host='.$link['host'].';port='.$link['port'].';dbname='.$link['dbname'];

      // try 判斷是否連上 否:顯示訊息
      try {
        $connect=new PDO($dbconnect,$link['account'],$link['password']);
        $connect-> query("SET NAMES 'utf8'");
        $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      } catch (Exception $e) {
            echo "Connection failed: ".$e->getMessage();
             exit();
      }
?>
