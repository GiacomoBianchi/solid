// Giacomo Bianchi 31/10/2019
// this class changes artwork color according to game system
//
// example of usage:
// colors_by_system_2( art, 0, 4, 800, 700 );
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


class colors_by_system_2 {

	// lista array aggiornata al 22/08/2020

	arc =  [ "arcade", "arcades", "arcade collection", "coin-op", "arcade.selection_mame.0.217" ];
	p3do = [ "3do", "panasonic 3do" ];
	n3ds = [ "3ds", "nintendo 3ds" ];
	at2 =  [ "atari2600", "atari 2600", "2600" ];
	at7 =  [ "atari7800", "atari 7800", "7800" ];
	ato =  [ "atomiswave" ];
	atj =  [ "atarijaguar", "atari jaguar", "jaguar" ];
	atl =  [ "atarilynx", "atari lynx", "lynx" ];
	cav =  [ "cave", "cave3rd", "cave 3rd" ];
	col =  [ "colecovision", "coleco vision" ];
	drc =  [ "dreamcast", "dreamcast_cdi","sega dreamcast" ];
	fba =  [ "fba", "final burn alpha", "fb alpha" ];
	f671 = [ "fba.0.2.96.71_pifba" ];
	f730 = [ "fba.0.2.97.30_fbalpha2012" ];
	f740 = [ "fba.0.2.97.40_fbalpha" ];
	f744 = [ "fba.0.2.97.44_fbneo" ];
	fds =  [ "fds", "nintendo fds", "nintendo famicom disk system", "famicom disk system" ];
	gae =  [ "gaelco" ]
	gg =   [ "gamegear", "gg", "game gear", "sega gamegear" ];
	gb =   [ "gb", "gameboy", "game boy" ];
	gba =  [ "gba", "gameboy advance" ];
	gbc =  [ "gbc", "gameboy color" ];
	gc =   [ "gc", "gamecube", "nintendo gamecube" ];
	gen =  [ "genesis", "sega genesis", "megadrive", "sega megadrive" ];
	hik =  [ "hikaru", "sega hikaru" ];
	mam =  [ "mame" ]
	m037 = [ "mame.0.37b5_mame2000_mame-mame4all" ];
	m078 = [ "mame.0.78_mame2003" ];
	m106 = [ "mame.0.106_mame2006_mame-advmame" ];
	m139 = [ "mame.0.139_mame2010_mame4droid" ];
	m217 = [ "mame.0.217" ];
	sms =  [ "mastersystem", "sms", "sega mastersystem" ];
	n64 =  [ "n64", "nintendo 64" ];
	nao =  [ "naomi", "naomi2", "naomigd" ];
	nds =  [ "nds", "nintendo ds" ];
	aes =  [ "neogeoaes", "aes", "neogeo aes", "neo geo aes" ];
	ncd =  [ "neogeocd", "ncd", "neogeo cd", "neo geo cd", "neogeo-cd", "neo geo cdz", "neogeocdz" ];
	mvs =  [ "neogeomvs", "mvs", "neogeo mvs", "neo geo mvs" ];
	nes =  [ "nes", "nintendo entertainment system" ];
	ngp =  [ "ngp", "neogeo pocket", "neo geo pocket" ];
	ngpc = [ "ngpc", "neogeo pocket color", "neo geo pocket color" ];
	od2 =  [ "odyssey2", "odyssey 2" ];
	pce =  [ "pcengine", "pc engine", "turbografx-16", "turbografx" ];
	ps2 =  [ "ps2", "playstation2", "playstation 2" ];
	ps3 =  [ "ps3", "playstation3", "playstation 3" ];
	psp =  [ "psp", "playstation portable" ];
	psx =  [ "psx", "playstation", "sony playstation" ];
	sat =  [ "saturn", "sega saturn" ];
	s32x = [ "sega32x", "32x", "sega 32x", "mega drive 32x", "sega mega drive 32x", "sega super 32x", "genesis 32x", "sega genesis 32x" ];
	scd =  [ "segacd", "sega cd", "sega-cd", "sega megacd", "sega mega cd", "megacd", "mega-cd", "cdx" ];
	cd32 = [ "segacd32x", "sega-cd 32x" ];
	sg1 =  [ "sg1000", "sg-1000", "sega sg-1000" ];
	snes = [ "snes", "super nintendo" ];
	sgf = [ "supergrafx" ];
	vec =  [ "vectrex" ];
	vrb =  [ "virtualboy", "virtual boy", "nintendo virtualboy" ];
	wii =  [ "wii", "nintendo wii" ];
	wiiu = [ "wiiu", "nintendo wiiu" ];
	wsw =  [ "wonderswan" ];
	wsc =  [ "wonderswancolor", "wonderswan color" ];
	zxs =  [ "zxspectrum" ];


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

		if ( ttype == Transition.ToNewList ) {
			local text = fe.list.name.tolower();

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
			if ( arc.find(text) > -1 ) {		// ARCADE
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=255;	break;	// menu below title -------- blue
					case 3:	R=0; 	G=153;	B=255;	break;	// menu below display ------ azure
					case 4:	R=208; 	G=133;	B=7;	break;	// menu below players ------ orange
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=40; 	G=40;	B=40;	break;	// right menu background --- dark grey
					case 7:	R=255; 	G=255;	B=0;	break;	// right menu system_logo -- yellow
					case 8:	R=253; 	G=213;	B=28;	break;	// right menu listbox ------ mango
					case 9:	R=253; 	G=213;	B=28;	break;	// right menu number ------- mango
					case 10:R=0; 	G=153;	B=255;	break;	// right menu specs -------- azure
				}
			}
			else if ( p3do.find(text) > -1 ) {		// 3DO
			switch ( number ) {
					case 0:	R=73; 	G=2;	B=252;	break;	// menu below background --- blue console packaging
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=61; 	G=173;	B=125;	break;	// right menu listbox ------ green console packaging
					case 9:	R=255; 	G=73;	B=42;	break;	// right menu number ------- red console packaging
					case 10:R=255; 	G=73;	B=42;	break;	// right menu specs -------- red console packaging
				}
			}	
			else if ( n3ds.find(text) > -1 ) {		// 3DS
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=207; 	G=24;	B=31;	break;	// menu below info --------- red 3ds logo
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3: R=100; 	G=100;	B=100;	break;	// menu below display ------ grey
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=207; 	G=24;	B=31;	break;	// menu below category ----- red 3ds logo
					case 6:	R=82; 	G=159;	B=222;	break;	// right menu background --- cyan
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( at2.find(text) > -1 ) {		// ATARI 2600
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3: R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=150; 	G=150;	B=150;	break;	// right menu background --- grey
					case 7:	R=237; 	G=28;	B=36;	break;	// right menu system_logo -- red atari2600 logo
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( at7.find(text) > -1 ) {		// ATARI 7800
				switch ( number ) {
					case 0:	R=120; 	G=120;	B=120;	break;	// menu below background --- grey
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=157; 	G=7;	B=19;	break;	// menu below title -------- brown atari 7800 logo
					case 3: R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=157; 	G=7;	B=19;	break;	// menu below players ------ brown atari 7800 logo
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=25; 	G=25;	B=25;	break;	// right menu background --- dark grey
					case 7:	R=157; 	G=7;	B=19;	break;	// right menu system_logo -- brown atari 7800 logo
					case 8:	R=246; 	G=234;	B=100;	break;	// right menu listbox ------ grey console
					case 9:	R=246; 	G=234;	B=100;	break;	// right menu number ------- yellow packaging logo
					case 10:R=246; 	G=234;	B=100;	break;	// right menu specs -------- yellow packaging logo
				}
			}
			else if ( atj.find(text) > -1 ) {		// ATARI JAGUAR
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=255; 	G=250;	B=0;	break;	// menu below info --------- yellow
					case 2:	R=255; 	G=250;	B=0;	break;	// menu below title -------- yellow
					case 3: R=245; 	G=0;	B=5;	break;	// menu below display ------ red logo
					case 4:	R=255; 	G=250;	B=0;	break;	// menu below players ------ yellow
					case 5:	R=255; 	G=250;	B=0;	break;	// menu below category ----- yellow
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=245; 	G=0;	B=5;	break;	// right menu system_logo -- red logo
					case 8:	R=255; 	G=250;	B=0;	break;	// right menu listbox ------ yellow
					case 9:	R=255; 	G=250;	B=0;	break;	// right menu number ------- yellow
					case 10:R=255; 	G=250;	B=0;	break;	// right menu specs -------- yellow
				}
			}
			else if ( atl.find(text) > -1 ) {		// ATARI LYNX
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=255; 	G=0;	B=0;	break;	// menu below info --------- red logo
					case 2:	R=255; 	G=204;	B=0;	break;	// menu below title -------- yellow logo
					case 3: R=255; 	G=0;	B=0;	break;	// menu below display ------ red logo
					case 4:	R=255; 	G=204;	B=0;	break;	// menu below players ------ yellow logo
					case 5:	R=255; 	G=0;	B=0;	break;	// menu below category ----- red logo
					case 6:	R=127; 	G=132;	B=162;	break;	// right menu background --- grey packaging
					case 7:	R=255; 	G=204;	B=0;	break;	// right menu system_logo -- yellow
					case 8:	R=255; 	G=0;	B=0;	break;	// right menu listbox ------ red
					case 9:	R=255; 	G=0;	B=0;	break;	// right menu number ------- red
					case 10:R=255; 	G=0;	B=0;	break;	// right menu specs -------- red
				}
			}
			else if ( ato.find(text) > -1 ) {		// ATOMISWAVE
				switch ( number ) {
					case 0:	R=69; 	G=128;	B=85;	break;	// menu below background --- green
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3: R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( cav.find(text) > -1 ) {		// CAVE
				switch ( number ) {
					case 0:	R=230; 	G=0;	B=19;	break;	// menu below background --- red
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3: R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=153;	B=68;	break;	// right menu listbox ------ red
					case 9:	R=0; 	G=153;	B=68;	break;	// right menu number ------- red
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( col.find(text) > -1 ) {		// COLECOVISION
				switch ( number ) {
					case 0:	R=46; 	G=76;	B=166;	break;	// menu below background --- blue packaging
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=119; 	G=121;	B=118;	break;	// right menu background --- grey packaging
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}	
			else if ( drc.find(text) > -1 ) {		// DREAMCAST
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=207; 	G=51;	B=17;	break;	// menu below info --------- red logo
					case 2:	R=207; 	G=51;	B=17;	break;	// menu below title -------- red logo
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=217; 	G=217;	B=214;	break;	// right menu background --- grey controller
					case 7:	R=207; 	G=51;	B=17;	break;	// right menu system_logo -- red logo
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( fba.find(text) > -1 ) {		// FINAL BURN ALPHA
				switch ( number ) {
					case 0:	R=207; 	G=138;	B=97;	break;	// menu below background --- sand logo
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=207; 	G=178;	B=137;	break;	// right menu background --- sand logo
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9: R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( f671.find(text) > -1 ) {		// PIFBA 0.2.96.71
				switch ( number ) {
					case 0:	R=255; 	G=204;	B=12;	break;	// menu below background --- yellow
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=207; 	G=178;	B=137;	break;	// right menu background --- sand logo
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9: R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( f730.find(text) > -1 ) {		// FBALPHA2012 0.2.97.30
				switch ( number ) {
					case 0:	R=20; 	G=153;	B=57;	break;	// menu below background --- green
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=207; 	G=178;	B=137;	break;	// right menu background --- sand logo
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9: R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( f740.find(text) > -1 ) {		// FBALPHA 0.2.97.40
				switch ( number ) {
					case 0:	R=40; 	G=90;	B=165;	break;	// menu below background --- blue
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=207; 	G=178;	B=137;	break;	// right menu background --- sand logo
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9: R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( f744.find(text) > -1 ) {		// FBNEO 0.2.97.44
				switch ( number ) {
					case 0:	R=228; 	G=38;	B=33;	break;	// menu below background --- red
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=207; 	G=178;	B=137;	break;	// right menu background --- sand logo
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9: R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}			
			else if ( fds.find(text) > -1 ) {		// FDS - FAMILY DISK SYSTEM
				switch ( number ) {
					case 0:	R=249; 	G=171;	B=23;	break;	// menu below background --- yellow packaging
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=120; 	G=120;	B=120;	break;	// right menu background --- grey packaging
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9: R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( gae.find(text) > -1 ) {		// GAELCO
				switch ( number ) {
					case 0:	R=113; 	G=163;	B=33;	break;	// menu below background --- green
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=113; 	G=163;	B=33;	break;	// right menu listbox ------ green
					case 9: R=113; 	G=163;	B=33;	break;	// right menu number ------- green
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( gg.find(text) > -1 ) {		// GAME GEAR
				switch ( number ) {
					case 0:	R=139; 	G=135;	B=135;	break;	// menu below background --- grey logo
					case 1:	R=0; 	G=0;	B=255;	break;	// menu below info --------- blue logo
					case 2:	R=0; 	G=0;	B=255;	break;	// menu below title -------- blue logo
					case 3:	R=0; 	G=0;	B=255;	break;	// menu below display ------ blue logo
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=184; 	G=30;	B=134;	break;	// right menu background --- fuxia packaging
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9: R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( gb.find(text) > -1 ) {		// GAME BOY
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=172; 	G=172;	B=172;	break;	// menu below info --------- grey packaging
					case 2:	R=172; 	G=172;	B=172;	break;	// menu below title -------- grey packaging
					case 3:	R=255; 	G=0;	B=0;	break;	// menu below display ------ red
					case 4:	R=46; 	G=49;	B=146;	break;	// menu below players ------ blue logo
					case 5:	R=46; 	G=49;	B=146;	break;	// menu below category ----- blue logo
					case 6:	R=172; 	G=172;	B=172;	break;	// right menu background --- grey packaging
					case 7:	R=46; 	G=49;	B=146;	break;	// right menu system_logo -- blue logo
					case 8:	R=46; 	G=49;	B=146;	break;	// right menu listbox ------ blue logo
					case 9:	R=46; 	G=49;	B=146;	break;	// right menu number ------- blue logo
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( gba.find(text) > -1 ) {		// GAME BOY ADVANCE
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=31; 	G=0;	B=204;	break;	// menu below info --------- blue logo
					case 2:	R=31; 	G=0;	B=204;	break;	// menu below title -------- blue logo
					case 3:	R=100; 	G=100;	B=100;	break;	// menu below display ------ grey
					case 4:	R=31; 	G=0;	B=204;	break;	// menu below players ------ blue logo
					case 5:	R=31; 	G=0;	B=204;	break;	// menu below category ----- blue logo
					case 6:	R=177; 	G=184;	B=189;	break;	// right menu background --- grey packaging
					case 7:	R=31; 	G=0;	B=204;	break;	// right menu system_logo -- blue logo
					case 8:	R=31; 	G=0;	B=204;	break;	// right menu listbox ------ blue logo
					case 9:	R=31; 	G=0;	B=204;	break;	// right menu number ------- blue logo
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( gbc.find(text) > -1 ) {		// GAME BOY COLOR
				switch ( number ) {
					case 0:	R=45; 	G=40;	B=139;	break;	// menu below background --- blue logo
					case 1:	R=148; 	G=1;	B=44;	break;	// menu below info --------- red logo
					case 2:	R=200; 	G=166;	B=1;	break;	// menu below title -------- yellow logo
					case 3:	R=99; 	G=157;	B=1;	break;	// menu below display ------ green logo
					case 4:	R=200; 	G=166;	B=1;	break;	// menu below players ------ yellow logo
					case 5:	R=0; 	G=118;	B=106;	break;	// menu below category ----- green logo
					case 6:	R=177; 	G=184;	B=189;	break;	// right menu background --- grey packaging
					case 7:	R=46; 	G=49;	B=146;	break;	// right menu system_logo -- blue logo
					case 8:	R=46; 	G=49;	B=146;	break;	// right menu listbox ------ blue logo
					case 9:	R=46; 	G=49;	B=146;	break;	// right menu number ------- blue logo
					case 10:R=46; 	G=49;	B=146;	break;	// right menu specs -------- blue logo
				}
			}
			else if ( gc.find(text) > -1 ) {		// GAMECUBE
				switch ( number ) {
					case 0:	R=167; 	G=179;	B=217;	break;	// menu below background --- light violet logo
					case 1:	R=76; 	G=82;	B=131;	break;	// menu below info --------- violet1 logo
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=85; 	G=91;	B=141;	break;	// menu below display ------ violet2 logo
					case 4:	R=126; 	G=128;	B=176;	break;	// menu below players ------ violet4 logo
					case 5:	R=103; 	G=107;	B=157;	break;	// menu below category ----- violet3 logo
					case 6:	R=85; 	G=91;	B=141;	break;	// right menu background --- violet2 logo
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( gen.find(text) > -1 ) {		// GENESIS
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=217; 	G=221;	B=233;	break;	// menu below info --------- light grey logo
					case 2:	R=217; 	G=221;	B=233;	break;	// menu below title -------- light grey logo
					case 3:	R=153; 	G=35;	B=35;	break;	// menu below display ------ dark red
					case 4:	R=217; 	G=221;	B=233;	break;	// menu below players ------ light grey logo
					case 5:	R=217; 	G=221;	B=233;	break;	// menu below category ----- light grey logo
					case 6:	R=127; 	G=26;	B=26;	break;	// right menu background --- very dark red
					case 7:	R=217; 	G=221;	B=233;	break;	// right menu system_logo -- light grey logo
					case 8:	R=217; 	G=221;	B=233;	break;	// right menu listbox ------ light grey logo
					case 9:	R=217; 	G=221;	B=233;	break;	// right menu number ------- light grey logo
					case 10:R=217; 	G=221;	B=233;	break;	// right menu specs -------- light grey logo
				}
			}
			else if ( hik.find(text) > -1 ) {		// SEGA HIKARU
				switch ( number ) {
					case 0:	R=23; 	G=86;	B=155;	break;	// menu below background --- blue logo
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
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
			else if ( mam.find(text) > -1 ) {		// MAME
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=00;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=66; 	G=139;	B=202;	break;	// right menu system_logo -- azure
					case 8:	R=66; 	G=139;	B=202;	break;	// right menu listbox ------ blue
					case 9:	R=66; 	G=139;	B=202;	break;	// right menu number ------- blue
					case 10:R=6; 	G=53;	B=88;	break;	// right menu specs -------- dark blue
				}
			}
			else if ( m037.find(text) > -1 ) {		// MAME 0.37b5 MAME2000 MAME-MAME4ALL
				switch ( number ) {
					case 0:	R=53; 	G=214;	B=126;	break;	// menu below background --- green
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=00;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=66; 	G=139;	B=202;	break;	// right menu system_logo -- azure
					case 8:	R=66; 	G=139;	B=202;	break;	// right menu listbox ------ blue
					case 9:	R=66; 	G=139;	B=202;	break;	// right menu number ------- blue
					case 10:R=6; 	G=53;	B=88;	break;	// right menu specs -------- dark blue
				}
			}
			else if ( m078.find(text) > -1 ) {		// MAME 0.78 MAME2003
				switch ( number ) {
					case 0:	R=136; 	G=154;	B=255;	break;	// menu below background --- azure
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=00;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=66; 	G=139;	B=202;	break;	// right menu system_logo -- azure
					case 8:	R=66; 	G=139;	B=202;	break;	// right menu listbox ------ blue
					case 9:	R=66; 	G=139;	B=202;	break;	// right menu number ------- blue
					case 10:R=6; 	G=53;	B=88;	break;	// right menu specs -------- dark blue
				}
			}
			else if ( m106.find(text) > -1 ) {		// MAME 0.106 MAME2006 MAME-ADVMAME
				switch ( number ) {
					case 0:	R=237; 	G=252;	B=1;	break;	// menu below background --- yellow
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=00;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=66; 	G=139;	B=202;	break;	// right menu system_logo -- azure
					case 8:	R=66; 	G=139;	B=202;	break;	// right menu listbox ------ blue
					case 9:	R=66; 	G=139;	B=202;	break;	// right menu number ------- blue
					case 10:R=6; 	G=53;	B=88;	break;	// right menu specs -------- dark blue
				}
			}
			else if ( m139.find(text) > -1 ) {		// MAME 0.139 MAME2010 MAME4DROID
				switch ( number ) {
					case 0:	R=255; 	G=83;	B=31;	break;	// menu below background --- red
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=00;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=66; 	G=139;	B=202;	break;	// right menu system_logo -- azure
					case 8:	R=66; 	G=139;	B=202;	break;	// right menu listbox ------ blue
					case 9:	R=66; 	G=139;	B=202;	break;	// right menu number ------- blue
					case 10:R=6; 	G=53;	B=88;	break;	// right menu specs -------- dark blue
				}
			}
			else if ( m217.find(text) > -1 ) {		// MAME 0.217
				switch ( number ) {
					case 0:	R=219; 	G=14;	B=128;	break;	// menu below background --- fuchsia
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=00;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=66; 	G=139;	B=202;	break;	// right menu system_logo -- azure
					case 8:	R=66; 	G=139;	B=202;	break;	// right menu listbox ------ blue
					case 9:	R=66; 	G=139;	B=202;	break;	// right menu number ------- blue
					case 10:R=6; 	G=53;	B=88;	break;	// right menu specs -------- dark blue
				}
			}
			else if ( sms.find(text) > -1 ) {		// MASTERSYSTEM
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=196; 	G=41;	B=40;	break;	// menu below title -------- red console
					case 3:	R=8; 	G=56;	B=120;	break;	// menu below display ------ blue logo sega
					case 4:	R=8; 	G=56;	B=120;	break;	// menu below players ------ blue logo sega
					case 5:	R=196; 	G=41;	B=40;	break;	// menu below category ----- red console
					case 6:	R=255; 	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=196; 	G=41;	B=40;	break;	// right menu system_logo -- red console
					case 8:	R=8; 	G=56;	B=120;	break;	// right menu listbox ------ blue logo sega
					case 9:	R=8; 	G=56;	B=120;	break;	// right menu number ------- blue logo sega
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( n64.find(text) > -1 ) {		// NINTENDO 64
				switch ( number ) {
					case 0:	R=255; 	G=192;	B=1;	break;	// menu below background --- yellow logo
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=255; 	G=45;	B=30;	break;	// right menu listbox ------ red logo
					case 9:	R=6; 	G=147;	B=48;	break;	// right menu number ------- green logo
					case 10:R=1; 	G=36;	B=166;	break;	// right menu specs -------- blue logo
				}
			}
			else if ( nao.find(text) > -1 ) {		// NAOMI
				switch ( number ) {
					case 0:	R=254; 	G=114;	B=1;	break;	// menu below background --- orange
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=164; 	G=144;	B=118;	break;	// right menu background --- grey
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( nds.find(text) > -1 ) {		// NINTENDO DS
				switch ( number ) {
					case 0:	R=15; 	G=51;	B=114;	break;	// menu below background --- blue box
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=138; 	G=174;	B=202;	break;	// right menu background --- azure box
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( aes.find(text) > -1 ) {		// NEO GEO AES
				switch ( number ) {
					case 0:	R=69; 	G=75;	B=87;	break;	// menu below background --- dark grey console buttons
					case 1:	R=198; 	G=169;	B=118;	break;	// menu below info --------- gold console logo
					case 2:	R=198; 	G=169;	B=118;	break;	// menu below title -------- gold console logo
					case 3:	R=198; 	G=169;	B=118;	break;	// menu below display ------ gold console logo
					case 4:	R=198; 	G=169;	B=118;	break;	// menu below players ------ gold console logo
					case 5:	R=198; 	G=169;	B=118;	break;	// menu below category ----- gold console logo
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=198; 	G=169;	B=118;	break;	// right menu system_logo -- gold console logo
					case 8:	R=198; 	G=169;	B=118;	break;	// right menu listbox ------ gold console logo
					case 9:	R=198; 	G=169;	B=118;	break;	// right menu number ------- gold console logo
					case 10:R=198; 	G=169;	B=118;	break;	// right menu specs -------- gold console logo
				}
			}
			else if ( ncd.find(text) > -1 ) {		// NEO GEO CD
				switch ( number ) {
					case 0:	R=44; 	G=44;	B=44;	break;	// menu below background --- dark grey console
					case 1:	R=0; 	G=96;	B=146;	break;	// menu below info --------- blue controller D
					case 2:	R=201; 	G=156;	B=29;	break;	// menu below title -------- yellow controller B
					case 3:	R=0; 	G=148;	B=80;	break;	// menu below display ------ green controller C
					case 4:	R=0; 	G=96;	B=146;	break;	// menu below players ------ blue controller D
					case 5:	R=198; 	G=40;	B=44;	break;	// menu below category ----- red controller A
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=150; 	G=150;	B=150;	break;	// right menu listbox ------ grey
					case 9:	R=150; 	G=150;	B=150;	break;	// right menu number ------- grey
					case 10:R=150; 	G=150;	B=150;	break;	// right menu specs -------- grey
				}
			}
			else if ( mvs.find(text) > -1 ) {		// NEO GEO MVS
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=255; 	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255; 	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255; 	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255; 	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255; 	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255; 	G=0;	B=0;	break;	// right menu background --- red
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( nes.find(text) > -1 ) {		// NES
				switch ( number ) {
					case 0:	R=110; 	G=110;	B=110;	break;	// menu below background --- dark grey console
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=255; 	G=0;	B=0;	break;	// menu below display ------ red logo
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=218; 	G=218;	B=218;	break;	// right menu background --- grey console
					case 7:	R=255; 	G=0;	B=0;	break;	// right menu system_logo -- red logo
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( ngp.find(text) > -1 ) {		// NEO GEO POCKET
				switch ( number ) {
					case 0:	R=126; 	G=120;	B=107;	break;	// menu below background --- grey console
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- red logo
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- red logo
					case 3:	R=241; 	G=0;	B=0;	break;	// menu below display ------ red logo
					case 4:	R=241; 	G=0;	B=0;	break;	// menu below players ------ red logo
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- red logo
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=218; 	G=218;	B=218;	break;	// right menu system_logo -- red logo
					case 8:	R=218; 	G=218;	B=218;	break;	// right menu listbox ------ grey
					case 9:	R=0; 	G=159;	B=219;	break;	// right menu number ------- azure
					case 10:R=218; 	G=218;	B=218;	break;	// right menu specs -------- grey
				}
			}
			else if ( ngpc.find(text) > -1 ) {		// NEO GEO POCKET COLOR
				switch ( number ) {
					case 0:	R=187; 	G=138;	B=157;	break;	// menu below background --- fuchsia
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=241; 	G=0;	B=0;	break;	// menu below display ------ red logo
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=229; 	G=147;	B=110;	break;	// right menu background --- pink
					case 7:	R=241; 	G=0;	B=0;	break;	// right menu system_logo -- red logo
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( od2.find(text) > -1 ) {		// ODYSSEY 2
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=252; 	G=210;	B=93;	break;	// menu below info --------- yellow1 logo
					case 2:	R=250; 	G=189;	B=80;	break;	// menu below title -------- yellow2 logo
					case 3:	R=247; 	G=149;	B=53;	break;	// menu below display ------ yellow3 logo
					case 4:	R=245; 	G=126;	B=37;	break;	// menu below players ------ yellow4 logo
					case 5:	R=252; 	G=210;	B=93;	break;	// menu below category ----- yellow1 logo
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=252; 	G=210;	B=93;	break;	// right menu system_logo -- yellow1 logo
					case 8:	R=250; 	G=189;	B=80;	break;	// right menu listbox ------ yellow2 logo
					case 9:	R=247; 	G=149;	B=53;	break;	// right menu number ------- yellow3 logo
					case 10:R=245; 	G=126;	B=37;	break;	// right menu specs -------- yellow4 logo
				}
			}
			else if ( pce.find(text) > -1 ) {		// PC ENGINE
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=226; 	G=131;	B=83;	break;	// menu below info --------- pink packaging
					case 2:	R=204; 	G=205;	B=207;	break;	// menu below title -------- grey packaging
					case 3:	R=212; 	G=86;	B=53;	break;	// menu below display ------ light red packaging
					case 4:	R=204; 	G=205;	B=207;	break;	// menu below players ------ grey packaging
					case 5:	R=204; 	G=205;	B=207;	break;	// menu below category ----- grey packaging
					case 6:	R=204; 	G=205;	B=207;	break;	// right menu background --- grey packaging
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=228; 	G=67;	B=59;	break;	// right menu number ------- red packaging
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( ps2.find(text) > -1 ) {		// PLAYSTATION 2
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=180; 	G=180;	B=180;	break;	// menu below info --------- grey
					case 2:	R=180; 	G=180;	B=180;	break;	// menu below title -------- grey
					case 3:	R=180; 	G=180;	B=180;	break;	// menu below display ------ grey
					case 4:	R=180; 	G=180;	B=180;	break;	// menu below players ------ grey
					case 5:	R=180; 	G=180;	B=180;	break;	// menu below category ----- grey
					case 6:	R=243; 	G=225;	B=1;	break;	// right menu background --- yellow box
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( ps3.find(text) > -1 ) {		// PLAYSTATION 3
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// menu below background --- white
					case 1:	R=0; 	G=76;	B=138;	break;	// menu below info --------- blue packaging
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=121; 	G=122;	B=124;	break;	// menu below display ------ grey
					case 4:	R=0; 	G=76;	B=138;	break;	// menu below players ------ blue packaging
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- white
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=255; 	G=255;	B=255;	break;	// right menu listbox ------ white
					case 9:	R=255; 	G=255;	B=255;	break;	// right menu number ------- white
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( psp.find(text) > -1 ) {		// PLAYSTATION PORTABLE
				switch ( number ) {
					case 0:	R=190; 	G=192;	B=199;	break;	// menu below background --- light grey packaging
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=47; 	G=78;	B=62;	break;	// menu below title -------- grey packaging
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=47; 	G=78;	B=62;	break;	// menu below category ----- grey packaging
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=190; 	G=192;	B=199;	break;	// right menu system_logo -- light grey packaging
					case 8:	R=190; 	G=192;	B=199;	break;	// right menu listbox ------ light grey packaging
					case 9:	R=190; 	G=192;	B=199;	break;	// right menu number ------- light grey packaging
					case 10:R=190; 	G=192;	B=199;	break;	// right menu specs -------- light grey packaging
				}
			}
			else if ( psx.find(text) > -1 ) {		// PLAYSTATION 1
				switch ( number ) {
					case 0:	R=156; 	G=165;	B=170;	break;	// menu below background --- grey box
					case 1:	R=255; 	G=0;	B=0;	break;	// menu below info --------- red
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=255; 	G=0;	B=0;	break;	// menu below category ----- red
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=255; 	G=255;	B=255;	break;	// right menu system_logo -- white
					case 8:	R=207; 	G=208;	B=209;	break;	// right menu listbox ------ grey
					case 9:	R=207; 	G=208;	B=209;	break;	// right menu number ------- grey
					case 10:R=207; 	G=208;	B=209;	break;	// right menu specs -------- grey
				}
			}
			else if ( sat.find(text) > -1 ) {		// SATURN
				switch ( number ) {
					case 0:	R=54; 	G=52;	B=153;	break;	// menu below background --- blue
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=140; 	G=140;	B=140;	break;	// menu below title -------- grey
					case 3:	R=0; 	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=0; 	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=0; 	G=0;	B=0;	break;	// menu below category ----- black
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=54; 	G=52;	B=153;	break;	// right menu listbox ------ blue
					case 9:	R=54; 	G=52;	B=153;	break;	// right menu number ------- blue
					case 10:R=140; 	G=140;	B=140;	break;	// right menu specs -------- grey
				}
			}
			else if ( s32x.find(text) > -1 ) {		// SEGA 32X
				switch ( number ) {
					case 0:	R=0;	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=250;	G=197;	B=7;	break;	// menu below info --------- yellow
					case 2:	R=250;	G=197;	B=7;	break;	// menu below title -------- yellow
					case 3:	R=221;	G=4;	B=2;	break;	// menu below display ------ red logo
					case 4:	R=0;	G=0;	B=0;	break;	// menu below players ------ black
					case 5:	R=221;	G=4;	B=2;	break;	// menu below category ----- red logo
					case 6:	R=250;	G=197;	B=7;	break;	// right menu background --- yellow
					case 7:	R=221;	G=4;	B=2;	break;	// right menu system_logo -- red logo
					case 8:	R=0;	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9: R=0;	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0;	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( scd.find(text) > -1 ) {		// SEGA-CD
				switch ( number ) {
					case 0:	R=0;	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=171;	G=181;	B=165;	break;	// menu below info --------- grey
					case 2:	R=171;	G=181;	B=165;	break;	// menu below title -------- grey
					case 3:	R=23;	G=103;	B=183;	break;	// menu below display ------ dark azure
					case 4:	R=171;	G=181;	B=165;	break;	// menu below players ------ grey
					case 5:	R=171;	G=181;	B=165;	break;	// menu below category ----- grey
					case 6:	R=23;	G=103;	B=183;	break;	// right menu background --- dark azure
					case 7:	R=171;	G=181;	B=165;	break;	// right menu system_logo -- grey
					case 8:	R=171;	G=181;	B=165;	break;	// right menu listbox ------ grey
					case 9:	R=171;	G=181;	B=165;	break;	// right menu number ------- grey
					case 10:R=171;	G=181;	B=165;	break;	// right menu specs -------- grey
				}
			}
			else if ( cd32.find(text) > -1 ) {		// SEGA-CD 32X
				switch ( number ) {
					case 0:	R=23;	G=103;	B=183;	break;	// menu below background --- cyan
					case 1:	R=72; 	G=151;	B=231;	break;	// menu below info --------- azure
					case 2:	R=171;	G=181;	B=165;	break;	// menu below title -------- grey
					case 3:	R=72; 	G=151;	B=231;	break;	// menu below display ------ azure
					case 4:	R=171;	G=181;	B=165;	break;	// menu below players ------ grey
					case 5:	R=171;	G=181;	B=165;	break;	// menu below category ----- grey
					case 6:	R=250;	G=197;	B=7;	break;	// right menu background --- yellow
					case 7:	R=221;	G=4;	B=2;	break;	// right menu system_logo -- red logo
					case 8:	R=0;	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9: R=0;	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0;	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( sg1.find(text) > -1 ) {		// SG-1000
				switch ( number ) {
					case 0:	R=23;	G=86;	B=155;	break;	// menu below background --- blue
					case 1:	R=255;	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255;	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255;	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255;	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255;	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255;	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=255;	G=0;	B=0;	break;	// right menu system_logo -- red
					case 8:	R=23;	G=86;	B=155;	break;	// right menu listbox ------ blue
					case 9:	R=255;	G=0;	B=0;	break;	// right menu number ------- red
					case 10:R=0;	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( snes.find(text) > -1 ) {		// SNES
				switch ( number ) {
					case 0:	R=175;	G=174;	B=170;	break;	// menu below background --- grey
					case 1:	R=0; 	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=0; 	G=0;	B=0;	break;	// menu below title -------- black
					case 3:	R=253;	G=36;	B=25;	break;	// menu below display ------ red
					case 4:	R=162;	G=161;	B=157;	break;	// menu below players ------ grey
					case 5:	R=30; 	G=22;	B=195;	break;	// menu below category ----- blue
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=253;	G=36;	B=25;	break;	// right menu system_logo -- red
					case 8:	R=175;	G=174;	B=170;	break;	// right menu listbox ------ grey
					case 9:	R=175;	G=174;	B=170;	break;	// right menu number ------- grey
					case 10:R=253;	G=36;	B=25;	break;	// right menu specs -------- red
				}
			}
			else if ( sgf.find(text) > -1 ) {		// SUPERGRAFX
				switch ( number ) {
					case 0:	R=0;	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=223;	G=185;	B=61;	break;	// menu below info --------- orange
					case 2:	R=130;	G=139;	B=214;	break;	// menu below title -------- azure
					case 3:	R=192;	G=46;	B=41;	break;	// menu below display ------ red
					case 4:	R=223;	G=185;	B=61;	break;	// menu below players ------ orange
					case 5:	R=30; 	G=22;	B=195;	break;	// menu below category ----- blue
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=130;	G=139;	B=214;	break;	// right menu system_logo -- azure
					case 8:	R=130;	G=139;	B=214;	break;	// right menu listbox ------ azure
					case 9:	R=192;	G=46;	B=41;	break;	// right menu number ------- red
					case 10:R=223;	G=185;	B=61;	break;	// right menu specs -------- orange
				}
			}
			else if ( vec.find(text) > -1 ) {		// VECTREX
				switch ( number ) {
					case 0:	R=188;	G=188;	B=188;	break;	// menu below background --- grey packaging
					case 1:	R=0;	G=0;	B=0;	break;	// menu below info --------- black
					case 2:	R=92; 	G=96;	B=157;	break;	// menu below title -------- blue packaging
					case 3:	R=0;	G=0;	B=0;	break;	// menu below display ------ black
					case 4:	R=92; 	G=96;	B=157;	break;	// menu below players ------ blue packaging
					case 5:	R=0;	G=0;	B=0;	break;	// menu below category ----- black 
					case 6:	R=188;	G=188;	B=188;	break;	// right menu background --- blue packaging
					case 7:	R=92; 	G=96;	B=157;	break;	// right menu system_logo -- blue packaging
					case 8:	R=92; 	G=96;	B=157;	break;	// right menu listbox ------ blue packaging
					case 9:	R=0;	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0;	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( vrb.find(text) > -1 ) {		// VIRTUALBOY
				switch ( number ) {
					case 0:	R=20; 	G=20;	B=20;	break;	// menu below background --- dark grey
					case 1:	R=0; 	G=130;	B=238;	break;	// menu below info --------- azure
					case 2:	R=0; 	G=130;	B=238;	break;	// menu below title -------- azure
					case 3:	R=0; 	G=130;	B=238;	break;	// menu below display ------ azure
					case 4:	R=0; 	G=130;	B=238;	break;	// menu below players ------ azure
					case 5:	R=0; 	G=130;	B=238;	break;	// menu below category ----- azure
					case 6:	R=0; 	G=0;	B=0;	break;	// right menu background --- black
					case 7:	R=249; 	G=29;	B=17;	break;	// right menu system_logo -- red logo
					case 8:	R=249; 	G=29;	B=17;	break;	// right menu listbox ------ red logo
					case 9:	R=249; 	G=29;	B=17;	break;	// right menu number ------- red logo
					case 10:R=255; 	G=255;	B=255;	break;	// right menu specs -------- white
				}
			}
			else if ( wii.find(text) > -1 ) {		// WII
				switch ( number ) {
					case 0:	R=63; 	G=181;	B=235;	break;	// menu below background --- azure packaging
					case 1:	R=255;	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255;	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255;	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255;	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255;	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255;	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=150; 	G=150;	B=154;	break;	// right menu system_logo -- grey logo
					case 8:	R=100; 	G=100;	B=100;	break;	// right menu listbox ------ dark grey
					case 9:	R=255; 	G=0;	B=0;	break;	// right menu number ------- red
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( wiiu.find(text) > -1 ) {		// WIIU
				switch ( number ) {
					case 0:	R=2; 	G=131;	B=204;	break;	// menu below background --- azure packaging
					case 1:	R=255;	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255;	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255;	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255;	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255;	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=255;	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=150; 	G=150;	B=154;	break;	// right menu system_logo -- grey logo
					case 8:	R=100; 	G=100;	B=100;	break;	// right menu listbox ------ dark grey
					case 9:	R=2; 	G=131;	B=204;	break;	// right menu number ------- azure packaging
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( wsw.find(text) > -1 ) {		// WONDERSWAN
				switch ( number ) {
					case 0:	R=17; 	G=37;	B=150;	break;	// menu below background --- blue
					case 1:	R=255;	G=255;	B=255;	break;	// menu below info --------- white
					case 2:	R=255;	G=255;	B=255;	break;	// menu below title -------- white
					case 3:	R=255;	G=255;	B=255;	break;	// menu below display ------ white
					case 4:	R=255;	G=255;	B=255;	break;	// menu below players ------ white
					case 5:	R=255;	G=255;	B=255;	break;	// menu below category ----- white
					case 6:	R=174; 	G=160;	B=147;	break;	// right menu background --- grey
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=0; 	G=0;	B=0;	break;	// right menu listbox ------ black
					case 9:	R=0; 	G=0;	B=0;	break;	// right menu number ------- black
					case 10:R=0; 	G=0;	B=0;	break;	// right menu specs -------- black
				}
			}
			else if ( wsc.find(text) > -1 ) {		// WONDERSWAN COLOR
				switch ( number ) {
					case 0:	R=0;	G=0;	B=0;	break;	// menu below background --- black
					case 1:	R=218; 	G=114;	B=163;	break;	// menu below info --------- pink logo
					case 2:	R=116; 	G=135;	B=191;	break;	// menu below title -------- cyan logo
					case 3:	R=240; 	G=55;	B=63;	break;	// menu below display ------ red logo
					case 4:	R=245; 	G=160;	B=35;	break;	// menu below players ------ orange logo
					case 5:	R=1; 	G=158;	B=227;	break;	// menu below category ----- azure logo
					case 6:	R=255;	G=255;	B=255;	break;	// right menu background --- white
					case 7:	R=0; 	G=0;	B=0;	break;	// right menu system_logo -- black
					case 8:	R=218; 	G=114;	B=163;	break;	// right menu listbox ------ pink logo
					case 9:	R=116; 	G=135;	B=191;	break;	// right menu number ------- cyan logo
					case 10:R=245; 	G=160;	B=35;	break;	// right menu specs -------- orange logo
				}
			}
			else if ( zxs.find(text) > -1 ) {		// ZX SPECTRUM
				switch ( number ) {
					case 0:	R=255; 	G=140;	B=31;	break;	// menu below background --- orange packaging
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