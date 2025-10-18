enum Bullet_source{
	PLAYER,
	ENEMY,
}

velocidad = 5;
enemigo =false;
angulo = 0;
image_angle = angulo;

sprites[Bullet_source.PLAYER] = spr_frien_bullet;
sprites[Bullet_source.ENEMY] = spr_enemy_bullet;
