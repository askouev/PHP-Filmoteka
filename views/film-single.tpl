<h1 class="title-1">Информация о фильме</h1>

<div class="card mb-20 pt-20">
	<div class="row">
		<div class="col">
			<img src="<?=HOST?>data/films/01.jpg" alt="<?=$film['title']?>">
		</div>

		<div class="col">
			<div class="card__header">
				<h4 class="title-4"><?=$film['title']?></h4>
				<div>

					<?php  
					if( isset($_SESSION['user']) ){
						if( $_SESSION['user'] == 'admin' ){ 
							?>
							<a href="edit.php?id=<?=$film['id']?>" class="button--edit">Редактировать</a>
							<a href="index.php?action=delete&id=<?=$film['id']?>" class="button--delete">Удалить</a>
							<?php   
						}
					} 
					?>	
					
				</div>
			</div>
			<div class="badge"><?=$film['genre']?></div>
			<div class="badge"><?=$film['year']?></div>
			<div class="user-content">
				<p><?=$film['description']?></p>
			</div>
		</div>
	</div>
</div>


