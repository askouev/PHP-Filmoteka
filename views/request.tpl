<div class="panel-holder mt-80 mb-40">
	<div class="title-4 mt-0">Укажите Ваши данные</div>
	<form action="set-cookie.php" method="POST"  class="mb-30">

		<label class="label-title">Ваше имя</label>
		<input class="input" type="text" placeholder="Ваше имя" name="user-name"/>

		<label class="label-title">Ваш город</label>
		<input class="input" type="text" placeholder="Ваш город" name="user-city"/>

		<input type="submit" class="button" value="Сохранить" name="user-submit">
	</form>

	<form action="unset-cookie.php" method="POST">
		<input type="submit" class="button" value="Удалить данные" name="user-unset">
	</form>

</div>