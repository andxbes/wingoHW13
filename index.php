<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Hi</title>
        <link rel="stylesheet" href="./resources/css/style.css"/>
        <?php require_once'./config.php'; ?>
    </head>
    <body>
        <?php
        
        include_once './config.php';
        include_once './dao/students.php';
        include_once './views/students_list.php';
        // put your code here
        ?>
        <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
        <script src="./resources/js/script.js"></script>
    </body>
</html>
