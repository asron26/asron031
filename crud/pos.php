<?php
session_start();

$empno = $_SESSION['empno'];

//connect database
require_once 'db.php';

$sql = "SELECT * FROM emp WHERE EMPNO = ? ";
$statement = $connection->prepare($sql);
$statement->execute([$empno]);
$emp = $statement->fetch(PDO::FETCH_OBJ);
$empno = $emp->EMPNO;
$ename = $emp->ENAME;
$job = $emp->JOB;
$mgr = $emp->MGR;
$hiredate = $emp->HIREDATE;
$sal = $emp->SAL;
$comm = $emp->COMM;
$deptno = $emp->DEPTNO;


      
echo "รหัสพนักงาน = "; 
echo $empno."<br>"; 
echo "ชื่อ = ";
echo $ename."<br>"; 
echo "อาชีพ = "; 
echo $job."<br>";
echo "หัวหน้า = "; 
echo $mgr."<br>";
echo "วันที่เข้าทำงาน = ";
echo $hiredate."<br>";
echo "เงินเดือน = ";
echo $sal."<br>";
echo "คอมมิชชั่น = "; 
echo $comm."<br>";
echo "แผนก = ";
echo $deptno."<br>";

session_unset();
?>

