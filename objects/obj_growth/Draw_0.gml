draw_self()
if((is_colliding && stage < 2) || (stage == 2 && is_colliding && image_index == 2)){
	draw_set_font(fnt_main)
	draw_sprite(spr_blank, 0, x, y - 20)
	draw_set_colour(c_black)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	draw_text(x, y - 20, word)
} else {
	if(stage == 0){
		draw_sprite(spr_plant, 0, x, y - 20)	
	} else if (stage == 1){
		draw_sprite(spr_water, 0, x, y - 20)
	}	
}
