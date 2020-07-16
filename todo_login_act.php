<?php
// var_dump($_POST);
// exit();
session_start();

// 外部ファイル読み込み
include("functions.php");

// DB接続します
$pdo = connect_to_db();

$username = $_POST["user_username"];
$password = $_POST["user_password"];

// データ取得SQL作成&実行
$sql = 'SELECT * FROM kqfm_users_table WHERE user_username=:user_username AND user_password=:user_password AND user_is_deleted=0';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':user_username', $user_username, PDO::PARAM_STR);
$stmt->bindValue(':user_password', $user_password, PDO::PARAM_STR);
$status = $stmt->execute();

// SQL実行時にエラーがある場合
if ($status == false) {
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
}

// うまくいったらデータ（1レコード）を取得
$val = $stmt->fetch(PDO::FETCH_ASSOC);

// ユーザ情報が取得できない場合はメッセージを表示
if (!$val) {
  echo "<p>ログイン情報に誤りがあります．</p>";
  echo '<a href="todo_login.php">login</a>';
  exit();
} else {
  $_SESSION = array();
  $_SESSION["session_id"] = session_id();
  $_SESSION["is_admin"] = $val["is_admin"];
  $_SESSION["user_username"] = $val["user_username"];
  $_SESSION["id"] = $val["id"];
  header("Location:todo_read.php");
  exit();
}
