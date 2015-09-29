<?php
//include_once '../config.php';
class Students {

    function getAllNamesOfStudents() {
        $query = 'SELECT id, name FROM students';
        return $this->execute($query)->fetchall();
    }

    function getProgressForStudent($id) {

        $query = "SELECT mark, predmet FROM marks where studentId='$id'";
        return $this->execute($query)->fetchAll();
    }

    private function execute($query) {
        $data = null;
        $pdoData = Students::getPDO()->prepare($query);
        $pdoData->execute();
        if ($pdoData->errorInfo()[0] == 0) { //если выборка прошла то ....
            $data = $pdoData;
        }
        return $data;
    }

    private static function getPDO() {
        try {
            $pdo = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS, array(
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC));
            $pdo->exec('SET NAMES utf8');
        } catch (PDOException $e) {
            die('Подключение не удалось: ' + $e->getMessage());
        }
        return $pdo;
    }

}

//class Student {
//
//    private $subgects;
//    private $rating;
//
//}
