<?php 

// Соединени с БД через отдельные файлы
require('config.php');
require('database.php');

$link = db_connect();

require('models/films.php');
require('functions/login-functions.php');

// Удаление фильма по кнопке "Удалить"
if( @$_GET['action'] == 'delete' ){
	
	$result = film_delete($link, $_GET['id']);

	if ( $result ){
		$resultInfo = "<p>Фильм был удалён.</p>";
	}else{
		$resultError = "<p>Фильм не был удалён.</p>";
	}
}


$films = films_all($link);

include('views/head.tpl');
include('views/notification.tpl');
include('views/index.tpl');
include('views/footer.tpl');

?>
