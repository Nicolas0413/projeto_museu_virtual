/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





if global.analise and (place_meeting(x, y, obj_personagem))
{
	draw_set_color(c_maroon)

	draw_rectangle(
	xini_cam,
	yini_cam-300,
	xini_cam+1366,
	yini_cam,
	false);

	draw_set_color(make_color_rgb(165,57,10))

	draw_rectangle(
	xini_cam+20,
	yini_cam-280,
	xini_cam+1346,
	yini_cam-20,
	false);
	
	
	
	draw_set_color(c_white);  



	var _largura_texto = (xini_cam+10 - xini_cam+1310);
	
	draw_set_font(fnt_fonte)
	draw_set_halign(fa_left);   
	draw_set_valign(fa_top); 
	draw_text_ext(xini_cam,yini_cam-300,fonte,-1,_largura_texto);
	
	draw_set_font(fnt_texto2);
	draw_set_halign(fa_left);   
	draw_set_valign(fa_top); 
	draw_text_ext(xini_cam+25,yini_cam-280,texto,-1,_largura_texto);
	
	draw_sprite_ext(obra,0,xini_cam+683,yini_cam-528,escala,escala,0,c_white,1)
}








