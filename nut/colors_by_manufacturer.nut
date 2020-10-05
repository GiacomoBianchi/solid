// Giacomo Bianchi 02/01/2020
// this class changes artwork color according to game Manufacturer
//
// example of usage:
// colors_by_manufacturer( art, 0, 4, 800, 700 );
// art ---> artwork_name
// 0 -----> change color
// 4 -----> coloration mode
// 800 ---> animation time in milliseconds (only for coloration mode 4 and 5)
// 700 ---> animation delay in milliseconds (only for coloration mode 4 and 5)
//
// coloration modes
// 0 = set_rgb
// 1 = set_sel_rgb
// 2 = set_bg_rgb
// 3 = set_selbg_rgb
// 4 = animation.add	require fe.load_module("animate");
//
// this class uses fe.add_transition_callback( this, "color" );


class colors_by_manufacturer {
	
	// lista array aggiornata al 08/01/2020
	
	ata =  [ "atari", "atari games" ];
	atl =  [ "atlus" ];
	cap =  [ "capcom" ];
	cav =  [ "cave" ];
	cps =  [ "capcom cps-1", "capcom cps-2", "capcom cps-3" ];
	dat =  [ "data-east", "data east", "data east corporation" ];
	gae =   [ "gaelco" ];
	hud =  [ "hudson", "hudson entertainment", "hudson soft" ];
	ire =  [ "irem", "irem corp." ];
	kan =  [ "kaneko" ];
	kon =  [ "konami" ];
	mid =  [ "midway", "midway games" ];
	nam =  [ "namco" ];
	nin =  [ "nintendo" ];
	psi =  [ "psikyo" ];
	rar =  [ "rare", "rare ltd", "rareware" ];
	seg =  [ "sega" ];
	snk =  [ "snk", "yuki enterprise / snk playmore" "snk playmore" ];
	tai =  [ "taito", "taito corporation" ];
	

	art = null;
	number = null;
	mod = null;
	tm = null;
	dl = null;

	
	constructor( artName, color_number, mode, animation_time, animation_delay )
	{
		art = artName;
		number = color_number;
		mod = mode;
		tm = animation_time;
		dl = animation_delay;
		fe.add_transition_callback( this, "color" );
	}

	function color( ttype, var, ttime ) 
	{
			local R = null;
			local G = null;
			local B = null;

		if ( ttype == Transition.ToNewList || ttype == Transition.ToNewSelection || ttype == Transition.FromOldSelection ) {
			local text = fe.game_info( Info.Manufacturer, 0 ).tolower();

			switch ( number ) {					// SYSTEM NOT FOUND
				case 0:	R=75;	G=75;	B=75;	break;		// menu below background --- grey 70%
				case 1:	R=0; 	G=0;	B=0;	break;		// menu below info --------- black
				case 2:	R=0; 	G=0;	B=0;	break;		// menu below title -------- black
				case 3:	R=0; 	G=0;	B=0;	break;		// menu below display ------ black
				case 4:	R=0; 	G=0;	B=0;	break;		// menu below players ------ black
				case 5:	R=0; 	G=0;	B=0;	break;		// menu below category ----- black
				case 6:	R=125;	G=125;	B=125;	break;		// right menu background --- grey 50%
				case 7:	R=0; 	G=0;	B=0;	break;		// right menu system_logo -- black
				case 8:	R=0; 	G=0;	B=0;	break;		// right menu listbox ------ black		
				case 9:	R=0; 	G=0;	B=0;	break;		// right menu number ------- black
				case 10:R=0; 	G=0;	B=0;	break;		// right menu specs -------- black
			}
			if ( ata.find(text) > -1 ) {		// ATARI
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( atl.find(text) > -1 ) {		// ATLUS
				switch ( number ) {
					case 0:	R=17; 	G=94;	B=172;	break;	// menu below background --- azure
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=216; 	G=0;	B=17;	break;	// right menu system_logo -- red
					case 8:	R=216; 	G=0;	B=17;	break;	// right menu listbox ------ red
					case 9:	R=216; 	G=0;	B=17;	break;	// right menu number ------- red
					case 10:R=216; 	G=0;	B=17;	break;	// right menu specs -------- red
				}
			}
			else if ( cap.find(text) > -1 ) {		// CAPCOM
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=255; 	G=203;	B=8;	break;	// right menu system_logo -- yellow
					case 8:	R=12; 	G=77;	B=162;	break;	// right menu listbox ------ blue
					case 9:	R=12; 	G=77;	B=162;	break;	// right menu number ------- blue
					case 10:R=12; 	G=77;	B=162;	break;	// right menu specs -------- blue
				}
			}
			else if ( cav.find(text) > -1 ) {		// CAVE
				switch ( number ) {
					case 0:	R=48; 	G=215;	B=126;	break;	// menu below background --- light green
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- black
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- black
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ black
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ black
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=22; 	G=178;	B=74;	break;	// right menu system_logo -- green
					case 8:	R=22; 	G=178;	B=74;	break;	// right menu listbox ------ green
					case 9:	R=22; 	G=178;	B=74;	break;	// right menu number ------- green
					case 10:R=22; 	G=178;	B=74;	break;	// right menu specs -------- green
				}
			}
			else if ( cps.find(text) > -1 ) {		// CAPCOM CPS
				switch ( number ) {
					case 0:	R=12; 	G=77;	B=162;	break;	// menu below background --- blue
					case 1:	R=255; 	G=203;	B=8;	break;	// menu below info --------- yellow
					case 2:	R=255; 	G=203;	B=8;	break;	// menu below title -------- yellow
					case 3:	R=255; 	G=203;	B=8;	break;	// menu below display ------ yellow
					case 4:	R=255; 	G=203;	B=8;	break;	// menu below players ------ yellow
					case 5:	R=255; 	G=203;	B=8;	break;	// menu below category ----- yellow
					case 6:	R=255; 	G=203;	B=8;	break;	// right menu background --- yellow
					case 7:	R=12; 	G=77;	B=162;	break;	// right menu system_logo -- blue
					case 8:	R=12; 	G=77;	B=162;	break;	// right menu listbox ------ blue
					case 9:	R=12; 	G=77;	B=162;	break;	// right menu number ------- blue
					case 10:R=12; 	G=77;	B=162;	break;	// right menu specs -------- blue
				}
			}
			else if ( dat.find(text) > -1 ) {		// DATA EAST
				switch ( number ) {
					case 0:	R=255; 	G=0;	B=0;	break;	// menu below background --- red
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=255; 	G=0;	B=0;	break;	// right menu system_logo -- red
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( gae.find(text) > -1 ) {		// GAELCO
				switch ( number ) {
					case 0:	R=113; 	G=163;	B=33;	break;	// menu below background --- green
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=113; 	G=163;	B=33;	break;	// right menu system_logo -- green
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( hud.find(text) > -1 ) {		// HUDSON SOFT
				switch ( number ) {
					case 0:	R=255; 	G=244;	B=0;	break;	// menu below background --- yellow
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=86;	B=159;	break;	// menu below display ------ cyan
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( ire.find(text) > -1 ) {		// IREM
				switch ( number ) {
					case 0:	R=55; 	G=125;	B=220;	break;	// menu below background --- azure
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=229; 	G=93;	B=121;	break;	// right menu background --- pink
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( kan.find(text) > -1 ) {		// KANEKO
				switch ( number ) {
					case 0:	R=255; 	G=0;	B=0;	break;	// menu below background --- red
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=255; 	G=0;	B=0;	break;	// right menu system_logo -- red
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( kon.find(text) > -1 ) {		// KONAMI
				switch ( number ) {
					case 0:	R=253; 	G=103;	B=36;	break;	// menu below background --- orange
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=255; 	G=0;	B=0;	break;	// right menu system_logo -- red
					case 8:	R=89; 	G=89;	B=89;	break;	// right menu listbox ------ grey
					case 9:	R=89; 	G=89;	B=89;	break;	// right menu number ------- grey
					case 10:R=89; 	G=89;	B=89;	break;	// right menu specs -------- grey
				}
			}
			else if ( mid.find(text) > -1 ) {		// MIDWAY
				switch ( number ) {
					case 0:	R=214; 	G=54;	B=71;	break;	// menu below background --- red
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( nam.find(text) > -1 ) {		// NAMCO
				switch ( number ) {
					case 0:	R=237; 	G=28;	B=39;	break;	// menu below background --- red
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=237; 	G=28;	B=39;	break;	// right menu system_logo -- red
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( nin.find(text) > -1 ) {		// NINTENDO
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- red
					case 1:	R=230; 	G=0;	B=18;	break;	// menu below info --------- red
					case 2:	R=230; 	G=0;	B=18;	break;	// menu below title -------- red
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=230; 	G=0;	B=18;	break;	// menu below players ------ red
					case 5:	R=230; 	G=0;	B=18;	break;	// menu below category ----- red
					case 6:	R=230; 	G=0;	B=18;	break;	// right menu background --- red
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( psi.find(text) > -1 ) {		// PSIKYO
				switch ( number ) {
					case 0:	R=255; 	G=0;	B=0;	break;	// menu below background --- red
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=255; 	G=0;	B=0;	break;	// right menu system_logo -- red
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( rar.find(text) > -1 ) {		// RAREWARE
				switch ( number ) {
					case 0:	R=100; 	G=0;	B=0;	break;	// menu below background --- red
					case 1:	R=194; 	G=194;	B=219;	break;	// menu below info --------- gold
					case 2:	R=194; 	G=194;	B=219;	break;	// menu below title -------- gold
					case 3:	R=194; 	G=194;	B=219;	break;	// menu below display ------ gold
					case 4:	R=194; 	G=194;	B=219;	break;	// menu below players ------ gold
					case 5:	R=194; 	G=194;	B=219;	break;	// menu below category ----- gold
					case 6:	R=10; 	G=10;	B=22;	break;	// right menu background --- blue
					case 7:	R=252; 	G=197;	B=77;	break;	// right menu system_logo -- grey
					case 8:	R=252; 	G=197;	B=77;	break;	// right menu listbox ------ grey
					case 9:	R=252; 	G=197;	B=77;	break;	// right menu number ------- grey
					case 10:R=252; 	G=197;	B=77;	break;	// right menu specs -------- grey
				}
			}
			else if ( seg.find(text) > -1 ) {		// SEGA
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=100;	break;	// menu below background --- blue
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=230; 	G=2;	B=10;	break;	// menu below display ------ red
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=0; 	G=0;	B=100;	break;	// right menu system_logo -- blue
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( snk.find(text) > -1 ) {		// SNK
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=140; 	G=192;	B=65;	break;	// menu below display ------ green
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=0; 	G=159;	B=219;	break;	// right menu system_logo -- blue
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( tai.find(text) > -1 ) {		// TAITO
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=255;	break;	// menu below background --- blue
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=255;	break;	// right menu listbox ------ blue
					case 9:	R=0; 	G=0;	B=255;	break;	// right menu number ------- blue
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			switch ( mod ) {
				case 0:	art.set_rgb( R, G, B ); break;
				case 1:	art.set_sel_rgb( R, G, B ); break;
				case 2:	art.set_bg_rgb( R, G, B ); break;
				case 3:	art.set_selbg_rgb( R, G, B ); break;
				case 4: animation.add( PropertyAnimation( art, { property="color", end={red=R,green=G,blue=B}, time=tm, delay=dl })); break;
			}
		}
	}
}