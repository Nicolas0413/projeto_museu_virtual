/// @description Movimentação
// Você pode escrever seu código neste editor

if global.analise == false
{
#region //Definindo teclas de movimentação e checando se estão pressionadas

if global.wasd == false
{
	var  _cima = keyboard_check(vk_up);
	var  _baixo = keyboard_check(vk_down);
	var  _esquerda = keyboard_check(vk_left);
	var  _direita = keyboard_check(vk_right);
}
else
{
	var  _cima = keyboard_check(ord("W"));
	var  _baixo = keyboard_check(ord("S"));
	var  _esquerda = keyboard_check(ord("A"));
	var  _direita = keyboard_check(ord("D"));
}
#endregion

#region //Verificando a direção do personagem e o fazendo se mover

//Verificando se tem alguma tecla de movimentação precionada
var _teclapress = _direita - _esquerda != 0 or _baixo - _cima != 0;


dir = point_direction(0,0,_direita - _esquerda,_baixo - _cima);


velx = lengthdir_x(vel * _teclapress, dir);
vely = lengthdir_y(vel * _teclapress, dir);


x += velx;
y += vely;

#endregion

#region //Mudando de sprite de acordo com a direção do personagem

if dir == 90 and _teclapress != 0
{
	
	//muda o sprite do objeto para o sprite do personagem de costas
	sprite_index = Spr_personagem_costas
	//mantém a direção/escala da sprite igual a original
	image_xscale = img_xscale 
	//define a velocidade do sprite na sua velocidade padrão
	image_speed = 1
	
}

else if dir == 270 and _teclapress != 0
{
	
	//muda o sprite do objeto para o sprite do personagem de frente
	sprite_index = Spr_personagem_frente
	//mantém a direção/escala da sprite igual a original
	image_xscale = img_xscale 
	//define a velocidade do sprite na sua velocidade padrão
	image_speed = 1
	
}

else if (dir <= 225 and dir >= 135) and _teclapress != 0
{
	//muda o sprite do objeto para o sprite do personagem de lado
	sprite_index = Spr_personagem_lado
	//mantém a direção/escala da sprite igual a original
	image_xscale = img_xscale 
	//define a velocidade do sprite na sua velocidade padrão
	image_speed = 1
	
}

else if (dir <= 45 or dir >= 315) and _teclapress != 0
{
	
	//muda o sprite do objeto para o sprite do personagem de lado
	sprite_index = Spr_personagem_lado
	//mantém a escala da sprite igual a original e inverte a direção
	image_xscale = img_xscale * -1
	//define a velocidade do sprite na sua velocidade padrão
	image_speed = 1
	
}

else
{
	
	//define a imagem do sprite como o personagem parado
	image_index = 3
	//define a velocidade da sprite como 0
	image_speed = 0

}

#endregion
}
