/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


draw_set_font(fnt_TNR);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if room == rm_titulo
{
	draw_text(x,y-23,"Movimentação:");

	if global.wasd == true
	{
		draw_text(x,y,"Movimentação:\nwasd");
	}
}
else
{
	draw_text(x,y,texto);
}