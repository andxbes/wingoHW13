<?php
include_once '../config.php';
include_once '../dao/students.php';
$id = $_POST['id'];
$student = new Students();
echo json_encode($student->getProgressForStudent($id));




