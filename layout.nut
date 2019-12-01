////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//
//                                                SOLID 1.0.0 layout for Attract-Mode 2.6.0
//                                                      Giacomo Bianchi 01/12/2019
//
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
local o = 0;
local color = "BY SYSTEM,BY GENRE,WHITE,BLACK,GREY 95%,GREY 90%,GREY 80%,GREY 70%,GREY 60%,GREY 50%,GREY 40%,GREY 30%,GREY 20%,GREY 10%,YELLOW,YELLOW ORANGE,ORANGE,RED ORANGE,RED,RED VIOLET,VIOLET,BLUE VIOLET,BLUE,BLUE GREEN,GREEN,YELLOW GREEN,LEMON,BANANA,AMBER,MANGO,TANGERINE,PEAR,APPLE,LIME ZEST,WASABI,EMERALD,JADE,CUCUMBER,DOS,TERMINAL,GRAPEFRUIT,APRICOT,MAHOGANY,SAPPHIRE,COBALT,DENIM,AMETHYST,VERY LIGHT BLUE,LIGHT BLUE,MEDIUM BLUE,DARK BLUE,BLACKBERRY,BORDEAUX,EGGPLANT,RASPBERRY,RUBY,SALMON,PLUM,AUBERGINE,FUCHSIA,MAGENTA,RAPHAEL,MICHELANGELO,LEONARDO,DONATELLO,TMNT,RICHARD PETTY,FERRARI";
local color_system = "BY SYSTEM,ORIGINAL,WHITE,BLACK,GREY 95%,GREY 90%,GREY 80%,GREY 70%,GREY 60%,GREY 50%,GREY 40%,GREY 30%,GREY 20%,GREY 10%,YELLOW,YELLOW ORANGE,ORANGE,RED ORANGE,RED,RED VIOLET,VIOLET,BLUE VIOLET,BLUE,BLUE GREEN,GREEN,YELLOW GREEN,LEMON,BANANA,AMBER,MANGO,TANGERINE,PEAR,APPLE,LIME ZEST,WASABI,EMERALD,JADE,CUCUMBER,DOS,TERMINAL,GRAPEFRUIT,APRICOT,MAHOGANY,SAPPHIRE,COBALT,DENIM,AMETHYST,VERY LIGHT BLUE,LIGHT BLUE,MEDIUM BLUE,DARK BLUE,BLACKBERRY,BORDEAUX,EGGPLANT,RASPBERRY,RUBY,SALMON,PLUM,AUBERGINE,FUCHSIA,MAGENTA,RAPHAEL,MICHELANGELO,LEONARDO,DONATELLO,TMNT,RICHARD PETTY,FERRARI";
local num100 = "DEFAULT,100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0";
class UserConfig {
	</ label="background artwork", help="background artwork (DEFAULT VIDEO)", options="VIDEO,SCREENSHOT", order=o++ /> art_opt="VIDEO";
	</ label="background aspect", help="background aspect (DEFAULT FULL SCREEN ANIMATED)", options="KEEP ASPECT,FULL SCREEN KEEP ASPECT,FULL SCREEN,FULL SCREEN ANIMATED", order=o++ /> asp_opt="FULL SCREEN ANIMATED";
	</ label="background video sound", help="background video sound (DEFAULT YES)", options="YES,NO", order=o++ /> sns_opt="YES";
	</ label="menu below", help="menu below (DEFAULT YES ANIMATED)", options="YES ANIMATED,YES,NO", order=o++ /> men_opt="YES ANIMATED";
	</ label="menu below art", help="menu below art (DEFAULT BOXART)", options="VIDEO,SCREENSHOT,BOXART,3D-BOXART,FLYER,CARTART,WHEEL,NO", order=o++ /> mea_opt="BOXART";
	</ label="right menu", help="right menu (DEFAULT YES ANIMATED)", options="YES ANIMATED,YES,NO", order=o++ /> rme_opt="YES ANIMATED";
	</ label="filter", help="right menu specs (DEFAULT YES)", options="YES,NO", order=o++ /> fil_opt="NO";
	</ label="specs", help="right menu specs (DEFAULT YES)", options="YES,NO", order=o++ /> spe_opt="YES";
	</ label="extra menu", help="extra menu (DEFAULT YES)", options="YES,NO", order=o++ /> eme_opt="YES";
	</ label="extra menu art", help="extra menu art (DEFAULT WHEEL)", options="VIDEO,SCREENSHOT,BOXART,3D-BOXART,FLYER,CARTART,WHEEL,NO", order=o++ /> ema_opt="WHEEL";
	</ label="extra menu text", help="extra menu extra or overview (DEFAULT EXTRA)", options="EXTRA,OVERVIEW", order=o++ /> eeo_opt="EXTRA";
	</ label="selection sound", help="selection sound (DEFAULT YES)", options="YES,NO", order=o++ /> sou_opt="YES";
	</ label="menu delay", help="menu disappearing delay (DEFAULT 15 tenths)", options=num100, order=o++ /> and_opt="DEFAULT";
	</ label="extra menu delay", help="menu appearing delay (DEFAULT 35 tenths)", options=num100, order=o++ /> aed_opt="DEFAULT";
	</ label="animation speed", help="menu disappearing animation speed (DEFAULT 15 hundredth)", options=num100, order=o++ /> ant_opt="DEFAULT";
	</ label=" ", help="", order=o++ /> space1=" ";
	</ label=" ", help="", order=o++ /> space2=" ";
	</ label="------------ COLOR OPTIONS ------------", help="These options change theme colors", order=o++ /> empty1=" ";
	</ label="menu below background color", help="menu below background color (DEFAULT BY SYSTEM)", options=color, order=o++ /> mbc_opt="BY SYSTEM";
	</ label="info color", help="menu below info color (DEFAULT BY SYSTEM)", options=color, order=o++ /> inc_opt="BY SYSTEM";
	</ label="title color", help="title color (DEFAULT BY SYSTEM)", options=color, order=o++ /> tit_opt="BY SYSTEM";
	</ label="display color", help="menu below display color (DEFAULT BY SYSTEM)", options=color, order=o++ /> dic_opt="BY SYSTEM";
	</ label="right menu background color", help="right menu background color (DEFAULT BY SYSTEM)", options=color, order=o++ /> rmc_opt="BY SYSTEM";
	</ label="system logo color", help="right menu system logo color (DEFAULT BY SYSTEM)", options=color_system, order=o++ /> slc_opt="BY SYSTEM";
	</ label="listbox color", help="right menu listbox color (DEFAULT BY SYSTEM)", options=color, order=o++ /> lic_opt="BY SYSTEM";
	</ label="listbox selected color", help="right menu listbox selected color (DEFAULT BY SYSTEM)", options=color, order=o++ /> lsc_opt="BY SYSTEM";
	</ label="listbox selected background color", help="listbox selected background color (DEFAULT BY SYSTEM)", options=color, order=o++ /> lrc_opt="BY SYSTEM";
	</ label="specs color", help="right menu specs color (DEFAULT BY SYSTEM)", options=color_system, order=o++ /> spc_opt="BY SYSTEM";
	</ label="extra menu background color", help="extra menu background color (DEFAULT BY SYSTEM)", options=color, order=o++ /> emc_opt="BY SYSTEM";
	</ label=" ", help="", order=o++ /> space3=" ";
	</ label=" ", help="", order=o++ /> space4=" ";
	</ label="------------ EXPERT OPTIONS ------------", help="These options change theme appearance", order=o++ /> empty2=" ";
	</ label="background width", help="background width - Require FULL SCREEN background aspect option (DEFAULT 100)", options=num100, order=o++ /> bgw_opt="DEFAULT";
	</ label="background height", help="background height - Require FULL SCREEN background aspect option (DEFAULT 100)", options=num100, order=o++ /> bgh_opt="DEFAULT";
	</ label="menu below width", help="menu below width (DEFAULT 70)", options=num100, order=o++ /> mew_opt="DEFAULT";
	</ label="menu below height", help="menu below height (DEFAULT 18)", options=num100, order=o++ /> meh_opt="DEFAULT";
	</ label="right menu width", help="right menu width (DEFAULT 30)", options=num100, order=o++ /> rmw_opt="DEFAULT";
	</ label="right menu listbox charsize", help="right menu listbox charsize (DEFAULT 25)", options=num100, order=o++ /> lbc_opt="DEFAULT";
	</ label="right menu listbox rows", help="right menu listbox rows (DEFAULT 7)", options=num100, order=o++ /> lbr_opt="DEFAULT";
	</ label="right menu current number height", help="right menu current number height (DEFAULT 50)", options=num100, order=o++ /> cnh_opt="DEFAULT";
	</ label="right menu total number height", help="right menu total number height (DEFAULT 20)", options=num100, order=o++ /> tnh_opt="DEFAULT";
	</ label="right menu specs height", help="right menu specs height (DEFAULT 17)", options=num100, order=o++ /> sph_opt="DEFAULT";
	</ label="extra menu title charsize", help="extra menu title charsize (DEFAULT 40)", options=num100, order=o++ /> etc_opt="DEFAULT";
	</ label="extra menu extra charsize", help="extra menu extra charsize (DEFAULT 25)", options=num100, order=o++ /> eec_opt="DEFAULT";
	</ label="text background", help="text background (DEFAULT NO)", options="YES,NO,DEFAULT", order=o++ /> tbg_opt="DEFAULT";
	
}
local my_config = fe.get_config();
fe.load_module("animate");
fe.do_nut("art_by_system.nut");
fe.do_nut("colors.nut");
fe.do_nut("color_by_category.nut")
fe.do_nut("colors_by_system_2.nut");
fe.do_nut("specs.nut");
local ffr = "FjallaOne-Regular.ttf";
local fsr = "Staatliches-Regular.ttf";
local flo = "LibreFranklin-Bold";
local fbr = "Barlow-Regular.ttf";
local fbm = "Barlow-Medium.ttf";
local fbb = "Barlow-Black.ttf";
fe.layout.font = ffr;
local flw = fe.layout.width;
local flh = fe.layout.height;

/////////// GENERAL DEFAULT VARIABLES
local ant = 150;		//  animation time
local anm = 4;			//  animation time multiplier
local and = 1500;		//  animation delay
local anq = 4;			//  color animation ( 4=YES / 0=N0 )
if ( my_config["and_opt"] != "DEFAULT") and = my_config["and_opt"].tointeger()*100;		// animation delay
if ( my_config["ant_opt"] != "DEFAULT") ant = my_config["ant_opt"].tointeger()*10;		// animation time

/////////// BACKGROUND DEFAULT VARIABLES
local bgw = flw;		// 	background width
local bgh = flh;		//  background height
if ( my_config["bgw_opt"] != "DEFAULT") bgw=my_config["bgw_opt"].tofloat()*0.01*flw;	//  background width
if ( my_config["bgh_opt"] != "DEFAULT") bgh=my_config["bgh_opt"].tofloat()*0.01*flh;	//  background height

/////////// MENU BELOW DEFAULT VARIABLES
local mew = 0.70;		//  menu width
local meh = 0.18;		//  menu height
local mat = 0.13;		//  margin top
local mad = 0.13;		//  margin bottom
local mal = 0.13;		//  margin left
local mar = 0.13;		//  margin right
local maw = 0.25;		//  menu_below_art width
local plw = 0.15;		//  players width
local plh = 0.70;		//  players height
local plm = 1.40;		//  players font height moltiplicator
local caw = 0.50;		//  category width
local cam = 1.25;		//  category font height moltiplicator
local cas = 0.05;		//  category space from players
local inh = 0.15;		//  info height
local ins = 0.01;		//  info space from players
local inm = 1.15;		//  info font height moltiplicator
local tih = 0.37;		//  title height
local tii = 0.15;		//  title space from info
local tip = 0.01;		//  title space from players
local tim = 1.20;		//  title font height moltiplicator
local dif = fsr;		//  display font
local diw = 0.20;		//  display width
local dis = 0.005;		//  display space from category
local dih = 0.13;		//  display height
local dim = 1.20;		//  display font height moltiplicator
if ( my_config["rme_opt"] == "NO") mew=1.00;	// if no right menu, below menu will be 100% width
if ( my_config["mew_opt"] != "DEFAULT") mew=my_config["mew_opt"].tofloat()*0.01;	//  menu below width
if ( my_config["meh_opt"] != "DEFAULT") meh=my_config["meh_opt"].tofloat()*0.01;	//  menu below height

/////////// RIGHT MENU DEFAULT VARIABLES
local rmw = 0.30;		// 	right_menu width
local rmm = 0.015;		//  right_menu margin down
local stn = 5;			//  stripe number of stripes
local stf = 6;			//  stripe first color (inside colors_by_system_2)
local stt = 2;			//  stripe total colors
local stc = stf;		//  stripe current color
local sly = 0.015;		//  system_logo y
local slw = 0.60;		//  system_logo width
local slh = 0.18;		//  system_logo height
local lbw = 0.86;		//  listbox width
local lbh = 0.37;		//  listbox height
local lis = 0.005;		//  listbox space from system_logo
local lbr = 7;			//  listbox rows
local lbc = 0.025;		//  listbox charsize
local baw = 0.010;		//  ball width
local cnh = 0.050;		//  current_number height
local cns = 0.015;		//  current_number space from listbox
local cnm = 1.35;		//  current_number font height moltiplicator
local nlw = 0.28;		//  number_line width
local nlh = 0.005;		//  number_line height
local nls = 0.012;		//  number_line space between current_number and total_number
local tnh = 0.020;		//  total_number height
local tnm = 1.35;		//  total_number font height moltiplicator
local fns = 0.008;		//  current_filter space from total_number
local fnh = 0.013;		//  current_filter height
local fnm = 1.35;		//  current_filter font height moltiplicator
local spx = 0.010;		//  specs_text x correction
local sps = 0.039;		//  specs space from total_number
local sph = 0.017;		//  specs height (charsize)
local spi = 0.003;		//  specs space between text rows
if ( my_config["spe_opt"] == "NO" ) {
	lbh = 0.65;			//  listbox height
	lbr = 11;			//  listbox rows
	lbc = 0.028;		//  listbox charsize
	cnh = 0.060;		//  current_number height
	tnh = 0.024;		//  total_number height
}
if ( my_config["rmw_opt"] != "DEFAULT") rmw=my_config["rmw_opt"].tofloat()*0.01;		//  right menu width
if ( my_config["lbc_opt"] != "DEFAULT") lbc=my_config["lbc_opt"].tofloat()*0.001;		//  right menu listbox charsize
if ( my_config["lbr_opt"] != "DEFAULT") lbr=my_config["lbr_opt"].tointeger();			//  right menu listbox rows
if ( my_config["cnh_opt"] != "DEFAULT") cnh=my_config["cnh_opt"].tofloat()*0.001;		//  right menu current_number height
if ( my_config["tnh_opt"] != "DEFAULT") tnh=my_config["tnh_opt"].tofloat()*0.001;		//  right menu total_number height
if ( my_config["sph_opt"] != "DEFAULT") sph = my_config["sph_opt"].tointeger()*0.001;	//  specs height

/////////// EXTRA MENU DEFAULT VARIABLES
local aed = 3500;		//  extra_menu animation delay
local ebx = 0.50;		//  extra_menu x
local eby = 0.50;		//  extra_menu y
local ebw = 0.50;		//  extra_menu width
local ebh = 0.70;		//  extra_menu height
local eah = 0.30;		//  extra_menu_art height
local eam = 0.035;		//  extra_menu_art margin
local eas = 0.035;		//  extra_menu_extra space between extra_menu_art
local etc = 0.40;		//  extra_menu_title charsize
local ets = 0.009;		//  extra_menu_title spacing
local eec = 0.025;		//  extra_menu_extra charsize
local ees = 1;			//  extra_menu_extra spacing
if ( my_config["aed_opt"] != "DEFAULT") aed = my_config["aed_opt"].tointeger()*100;		//  extra_menu animation delay
if ( my_config["etc_opt"] != "DEFAULT") etc=my_config["etc_opt"].tofloat()*0.01;		//  extra_menu_title charsize
if ( my_config["eec_opt"] != "DEFAULT") eec=my_config["eec_opt"].tofloat()*0.001;		//  extra_menu_extra charsize


/////////// BACKGROUND
local background = fe.add_artwork( "snap", 0, 0, bgw, bgh );
if ( my_config["asp_opt"] == "NO" ) background.video_flags = Vid.NoAudio;
if ( my_config["art_opt"] == "SCREENSHOT") background.video_flags = Vid.ImagesOnly;
if ( my_config["sns_opt"] == "NO") background.video_flags = Vid.NoAudio;
if ( my_config["asp_opt"] == "KEEP ASPECT") {
	background.preserve_aspect_ratio = false;
	fe.add_transition_callback("background_width");
	function background_width( ttype, var, ttime ) {
		if ( ttype == Transition.ToNewList || ttype == Transition.ToNewSelection || ttype == Transition.FromOldSelection ) {
			background.width = background.height / background.texture_height * background.texture_width;
		}
	}
}
if ( my_config["asp_opt"] == "FULL SCREEN ANIMATED" ) {
	background.preserve_aspect_ratio = false;
	background.height = flh-flh*meh;
	background.width = flw*mew;
	if ( my_config["men_opt"] == "YES ANIMATED" ) {
		animation.add( PropertyAnimation( background, { when=Transition.ToNewList, property="width", end=flw*mew, time=ant, tween=Tween.Circle }));
		animation.add( PropertyAnimation( background, { when=Transition.ToNewList, property="height", end=flh-flh*meh, time=ant, tween=Tween.Circle }));
		animation.add( PropertyAnimation( background, { when=Transition.ToNewSelection, property="width", end=flw*mew, time=ant ,tween=Tween.Circle }));
		animation.add( PropertyAnimation( background, { when=Transition.ToNewSelection, property="height", end=flh-flh*meh, time=ant ,tween=Tween.Circle }));
		animation.add( PropertyAnimation( background, { when=Transition.ToNewSelection, property="width", start=flw*mew, end=flw, time=ant*anm, delay=and ,tween=Tween.Circle }));
		animation.add( PropertyAnimation( background, { when=Transition.ToNewSelection, property="height", start=flh-flh*meh, end=flh, time=ant*anm, delay=and ,tween=Tween.Circle }));
	}
}
if ( my_config["asp_opt"] == "FULL SCREEN KEEP ASPECT" ) {
	background.preserve_aspect_ratio = true;
	background.y = -flh*0.50;
	background.height = flh*2.00;
}


/////////// MENU BELOW
function title( index_offset ) {		// this function is out of the "if ( my_config["men_opt"]..." because is also used by listbox
	local text = split( fe.game_info(Info.Title, index_offset), "(/[" );
	if ( text.len() > 0 ) return text[0].toupper();
	text = split( fe.game_info( Info.Name, index_offset ), "(/[" );
	if ( text.len() > 0 ) return text[0].toupper();
}

if ( my_config["men_opt"] == "YES ANIMATED" || my_config["men_opt"] == "YES" ) {
	local menu_below = fe.add_surface( flw*mew, flh*meh );
	menu_below.x = 0;
	menu_below.y = flh-flh*meh;
	
	local menu_below_background = menu_below.add_image( "white.png", 0, 0, flw*mew, flh*meh );
	if ( my_config["mbc_opt"] == "BY SYSTEM") colors_by_system_2( menu_below_background, 0, anq, ant, 0 );
	else if ( my_config["mbc_opt"] == "BY GENRE") color_by_category( menu_below_background, 0, anq, ant, 0 );
	else colors( menu_below_background, my_config["mbc_opt"], 0 );

	function players( index_offset ) {
		local text = fe.game_info(Info.Players,0);
		if (text == "1") return text + "P";
		else if (text == "")  return "--";
		else return text + "P";
	}
	local players = menu_below.add_text ( "[!players]", flw*mew-flh*meh*mar-flw*mew*plw, flh*meh*mat, flw*mew*plw, (flh*meh-flh*meh*mat-flh*meh*mad)*plh );
	players.font = fbm;
	players.align = Align.BottomRight;
	players.charsize = players.height*plm;
	players.margin = 0;
	if ( my_config["inc_opt"] == "BY SYSTEM") colors_by_system_2( players, 4, anq, ant, 0 );
	else if ( my_config["inc_opt"] == "BY GENRE") color_by_category( players, 0, anq, ant, 0 );
	else colors( players, my_config["inc_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( players, "blue", 2 );
	
	function category( index_offset ) {
		local text = fe.game_info(Info.Category, 0);
		if (text != "") return text.toupper();
		else return "MISSING GENRE";
	}
	local category = menu_below.add_text ( "[!category]", flw*mew-flh*meh*mar-flw*mew*caw, players.y+players.height+flh*meh*cas, flw*mew*caw, flh*meh-flh*meh*mat-players.height-flh*meh*cas-flh*meh*mad );
	category.font = fbb;
	category.align = Align.BottomRight;
	category.charsize = category.height*cam;
	category.margin = 0;
	if ( my_config["inc_opt"] == "BY SYSTEM") colors_by_system_2( category, 5, anq, ant, 0 );
	else if ( my_config["inc_opt"] == "BY GENRE") color_by_category( category, 0, anq, ant, 0 );
	else colors( category, my_config["inc_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( category, "blue", 2 );
	
	function info( index_offset, var ) {
		local yea = fe.game_info(Info.Year,0);
		local man = fe.game_info(Info.Manufacturer,0);
		if ( yea == "" ) yea = "MISSING YEAR";
		if ( man == "" ) man = "MISSING DEV";
		local text = yea + "  ·  " + man;
		return text.toupper();
	}
	local info = menu_below.add_text ( "[!info]", flh*meh*mal, flh*meh*mat, flw*mew-flh*meh*mal-players.width-flw*mew*ins-flh*meh*mar, (flh*meh-flh*meh*mat-flh*meh*mad)*inh );
	info.charsize = info.height*inm;
	info.align = Align.BottomLeft;
	info.margin = 0;
	if ( my_config["inc_opt"] == "BY SYSTEM") colors_by_system_2( info, 1, anq, ant, 0 );
	else if ( my_config["inc_opt"] == "BY GENRE") color_by_category( info, 0, anq, ant, 0 );
	else colors( info, my_config["inc_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( info, "blue", 2 );
	
	local title = menu_below.add_text ( "[!title]", flh*meh*mal, info.y+info.height+flh*meh*tii, flw*mew-flh*meh*mal-players.width-flw*mew*tip-flh*meh*mar, (flh*meh-flh*meh*mat-flh*meh*mad)*tih );
	title.align = Align.BottomLeft;
	title.charsize = title.height*tim;
	title.margin = 0;
	if ( my_config["tit_opt"] == "BY SYSTEM") colors_by_system_2( title, 2, anq, ant, 0 );
	else if ( my_config["tit_opt"] == "BY GENRE") color_by_category( title, 0, anq, ant, 0 );
	else colors( title, my_config["tit_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( title, "blue", 2 );
	
	function display( index_offset, var ) return fe.displays[fe.list.display_index].name.toupper();
	local display = menu_below.add_text ( "[!display]", flh*meh*mal, flh*meh-flh*meh*mad-(flh*meh-flh*meh*mat-flh*meh*mad)*dih, flw*mew-flh*meh*mal-flw*dis-category.width-flh*meh*mar, (flh*meh-flh*meh*mat-flh*meh*mad)*dih );
	display.font = flo;
	display.charsize = display.height*dim;
	display.align = Align.BottomLeft;
	display.margin = 0;
	if ( my_config["dic_opt"] == "BY SYSTEM") colors_by_system_2( display, 3, anq, ant, 0 );
	else if ( my_config["dic_opt"] == "BY GENRE") color_by_category( display, 0, anq, ant, 0 );
	else colors( display, my_config["dic_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( display, "blue", 2 );
	
	if ( my_config["mea_opt"] != "NO" ) {
		local mea = "";
		switch ( my_config["mea_opt"] ) {
			case "VIDEO":      mea = "snap"; break;
			case "SCREENSHOT": mea = "snap"; break;
			case "BOXART":     mea = "boxart"; break;
			case "3D-BOXART":  mea = "3d-boxart"; break;
			case "FLYER":      mea = "flyer"; break;
			case "WHEEL":      mea = "wheel"; break;
			case "CARTART":    mea = "cartart"; break;
		}	
		local menu_below_art = menu_below.add_artwork( mea, 0, flh*meh*mat, 0, flh*meh-flh*meh*mat-flh*meh*mad );
		menu_below_art.preserve_aspect_ratio = false;
		if ( my_config["mea_opt"] == "SCREENSHOT") menu_below_art.video_flags = Vid.ImagesOnly;
		fe.add_transition_callback("menu_below_art");
		function menu_below_art( ttype, var, ttime ) {
			if ( ttype == Transition.ToNewList || ttype == Transition.ToNewSelection || ttype == Transition.FromOldSelection ) {
				local path = null;
				if ( my_config["mea_opt"] == "SCREENSHOT") path = fe.get_art( "snap", 0 , 0 , Art.Default | Art.ImagesOnly );
				else path = fe.get_art( mea, 0 , 0 , Art.Default );
				if ( path != "" ) {
					menu_below_art.width = menu_below_art.height / menu_below_art.texture_height * menu_below_art.texture_width;
					menu_below_art.x = (flw*mew-flh*meh*mar)-menu_below_art.width;
				}
				else menu_below_art.width = 0;
				players.x = (flw*mew-flh*meh*mar)-menu_below_art.width - flh*meh*mar - players.width;
				category.x = (flw*mew-flh*meh*mar)-menu_below_art.width - flh*meh*mar - category.width;
				info.width = flw*mew - flh*meh*mal - menu_below_art.width - players.width - flw*mew*ins - flh*meh*mar*2.00;
				title.width = flw*mew - flh*meh*mal - menu_below_art.width - players.width - flw*mew*ins - flh*meh*mar*2.00;
				display.width = flw*mew - flh*meh*mal - menu_below_art.width - category.width - flw*mew*ins - flh*meh*mar*2.00;
			}
		}
	}
	
	if ( my_config["men_opt"] == "YES ANIMATED" ) {
		animation.add( PropertyAnimation( menu_below, { when=Transition.ToNewList, property="y", end=menu_below.y, time=ant, tween=Tween.Circle }));
		animation.add( PropertyAnimation( menu_below, { when=Transition.ToNewSelection, property="y", end=menu_below.y, time=ant, tween=Tween.Circle }));
		animation.add( PropertyAnimation( menu_below, { when=Transition.ToNewSelection, property="y", start=menu_below.y, end=flh, time=ant*anm, delay=and ,tween=Tween.Circle }));
	}
}


/////////// RIGHT MENU
if ( my_config["rme_opt"] == "YES ANIMATED" || my_config["rme_opt"] == "YES" ) {
	local right_menu = fe.add_surface( flw*rmw+1, flh );
	right_menu.x = flw-flw*rmw;
	right_menu.y = 0;

	local right_menu_background = right_menu.add_image( "white.png", 0, 0, flw*rmw+1, flh );
	if ( my_config["rmc_opt"] == "BY SYSTEM") colors_by_system_2( right_menu_background, 6, anq, ant, 0 );
	else if ( my_config["rmc_opt"] == "BY GENRE") color_by_category( right_menu_background, 0, anq, ant, 0 );
	else colors( right_menu_background, my_config["rmc_opt"], 0 );

	local system_logo = right_menu.add_image( "", flw*rmw*0.50-flw*rmw*slw*0.50, flh*sly, flw*rmw*slw, flh*slh );
	system_logo.preserve_aspect_ratio = true;
	if ( my_config["slc_opt"] == "ORIGINAL") art_by_system( "logos_colored/", system_logo );
	else {
		art_by_system( "logos/", system_logo );
		if ( my_config["slc_opt"] == "BY SYSTEM") colors_by_system_2( system_logo, 7, 0, 0, 0 );
		else if ( my_config["slc_opt"] == "BY GENRE") color_by_category( system_logo, 0, 0, 0, 0 );
		else colors( system_logo, my_config["slc_opt"], 0 );
	}

	local listbox = right_menu.add_listbox( flw*rmw*0.50-flw*rmw*lbw*0.50, system_logo.y+system_logo.height+flh*lis, flw*rmw*lbw, flh*lbh );
	listbox.charsize = flh*lbc;
	listbox.rows = lbr;
	listbox.selbg_alpha = 0;
	listbox.align = Align.Left;
	listbox.format_string = "[!title]";
	if ( my_config["lic_opt"] == "BY SYSTEM") colors_by_system_2( listbox, 8, 0, 0, 0 );		// testo
	else if ( my_config["lic_opt"] == "BY GENRE") color_by_category( listbox, 0, 0, 0, 0 );
	else colors( listbox, my_config["lic_opt"], 0 );
	if ( my_config["lsc_opt"] == "BY SYSTEM") colors_by_system_2( listbox, 8, 1, 0, 0 );		// testo selezionato
	else if ( my_config["lsc_opt"] == "BY GENRE") color_by_category( listbox, 0, 1, 0, 0 );
	else colors( listbox, my_config["lsc_opt"], 1 );
	if ( my_config["lrc_opt"] == "BY SYSTEM") colors_by_system_2( listbox, 8, 3, 0, 0 );		// riquadro di selezione
	else if ( my_config["lrc_opt"] == "BY GENRE") color_by_category( listbox, 0, 3, 0, 0 );
	else colors( listbox, my_config["lrc_opt"], 3 );
	
	local ball = right_menu.add_image( "ball.png", (flw*rmw-listbox.width)*0.25, listbox.y+listbox.height*0.50-flh*baw-1, flw*baw, flw*baw );
	ball.preserve_aspect_ratio = true;
	if ( my_config["lic_opt"] == "BY SYSTEM") colors_by_system_2( ball, 8, 0, 0, 0 );
	else if ( my_config["lic_opt"] == "BY GENRE") color_by_category( ball, 0, 0, 0, 0 );
	else colors( ball, my_config["lic_opt"], 0 );

	local current_number = right_menu.add_text("[ListEntry]", listbox.x, listbox.y+listbox.height+flh*cns, listbox.width, flh*cnh );
	current_number.font = fsr;
	current_number.charsize = flh*cnh*cnm;
	current_number.align = Align.BottomCentre;
	current_number.margin = 0;
	if ( my_config["lic_opt"] == "BY SYSTEM") colors_by_system_2( current_number, 9, 0, 0, 0 );
	else if ( my_config["lic_opt"] == "BY GENRE") color_by_category( current_number, 0, 0, 0, 0 );
	else colors( current_number, my_config["lic_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( current_number, "blue", 2 );
	if ( my_config["rme_opt"] == "YES ANIMATED" ) {
		animation.add( PropertyAnimation( right_menu, { when=Transition.ToNewList, property="x", end=right_menu.x, time=ant, tween=Tween.Circle }));
		animation.add( PropertyAnimation( right_menu, { when=Transition.ToNewSelection, property="x", end=right_menu.x, time=ant, tween=Tween.Circle }));
		animation.add( PropertyAnimation( right_menu, { when=Transition.ToNewSelection, property="x", start=right_menu.x, end=flw, time=ant*anm, delay=and, tween=Tween.Circle }));
	}
	
	local number_line = right_menu.add_image( "white.png", flw*rmw*0.50-flw*rmw*nlw*0.50, current_number.y+current_number.height+flh*nls, flw*rmw*nlw, flh*nlh );
	if ( my_config["rmc_opt"] == "BY SYSTEM") colors_by_system_2( number_line, 9, 0, 0, 0 );
	else if ( my_config["rmc_opt"] == "BY GENRE") color_by_category( number_line, 0, 0, 0, 0 );
	else colors( number_line, my_config["rmc_opt"], 0 );

	local total_number = right_menu.add_text("[ListSize]", listbox.x, number_line.y+number_line.height+flh*nls, listbox.width, flh*tnh );
	total_number.font = fsr;
	total_number.charsize = flh*tnh*tnm;
	total_number.align = Align.TopCentre;
	total_number.margin = 0;
	if ( my_config["lic_opt"] == "BY SYSTEM") colors_by_system_2( total_number, 9, 0, 0, 0 );
	else if ( my_config["lic_opt"] == "BY GENRE") color_by_category( total_number, 0, 0, 0, 0 );
	else colors( total_number, my_config["lic_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( total_number, "blue", 2 );

	if ( my_config["fil_opt"] == "YES" ) {
		function filter( index_offset, var ) {
		if (fe.filters.len() > 0) return fe.filters[fe.list.filter_index].name.toupper()
		else return ""
		}
		local current_filter = right_menu.add_text ( "[!filter]", listbox.x, total_number.y+total_number.height+flh*fns, listbox.width, flh*fnh );
		current_filter.charsize = flh*fnh*fnm;
		current_filter.font = fsr;
		current_filter.align = Align.TopCentre;
		current_filter.margin = 0;
		if ( my_config["lic_opt"] == "BY SYSTEM") colors_by_system_2( current_filter, 9, 0, 0, 0 );
		else if ( my_config["lic_opt"] == "BY GENRE") color_by_category( current_filter, 0, 0, 0, 0 );
		else colors( current_filter, my_config["lic_opt"], 0 );
		if ( my_config["tbg_opt"] == "YES" ) colors( current_filter, "blue", 2 );
	}
	
	if ( my_config["spe_opt"] == "YES" ) {
		local specs_text = [0,1,2,3,4,5,6,7,8,9,10,11];
		for ( local i=0 ; i<12 ; i++ ) {
			specs_text[i] = right_menu.add_text( "", listbox.x+flw*spx, total_number.y+total_number.height+flh*sps+flh*sph*i+flh*spi*i, listbox.width-flw*spx, flh*sph );
			specs( specs_text[i], i+1, "UPPERCASE" );
			specs_text[i].font = fbr;
			specs_text[i].align = Align.Left;
			specs_text[i].charsize = flh*sph;
			specs_text[i].margin = 0;
			if ( my_config["spc_opt"] == "BY SYSTEM") colors_by_system_2( specs_text[i], 10, 0, 0, 0 );
			else if ( my_config["spc_opt"] == "BY GENRE") color_by_category( specs_text[i], 0, 0, 0, 0 );
			else colors( specs_text[i], my_config["spc_opt"], 0 );
			if ( my_config["tbg_opt"] == "YES" ) colors( specs_text[i], "blue", 2 );
		}
	}
}


/////////// EXTRA MENU
if ( my_config["men_opt"] == "YES" ) eby = 0.50-meh*0.50;
if ( my_config["rme_opt"] == "YES" ) ebx = 0.50-rmw*0.50;
if ( my_config["eme_opt"] == "YES" ) {
	local extra_menu = fe.add_surface( flw*ebw, flh*ebh );
	extra_menu.x = flw*ebx-flw*ebw*0.50;
	extra_menu.y = -flh*ebh;
	
	local extra_menu_background = extra_menu.add_image( "white.png", 0, 0, flw*ebw, flh*ebh );
	if ( my_config["emc_opt"] == "BY SYSTEM") colors_by_system_2( extra_menu_background, 6, anq, ant, 0 );
	else if ( my_config["emc_opt"] == "BY GENRE") color_by_category( extra_menu_background, 0, anq, ant, 0 );
	else colors( extra_menu_background, my_config["emc_opt"], 0 );
	
	local ema = "";
	switch ( my_config["ema_opt"] ) {
		case "VIDEO":      ema = "snap"; break;
		case "SCREENSHOT": ema = "snap"; break;
		case "BOXART":     ema = "boxart"; break;
		case "3D-BOXART":  ema = "3d-boxart"; break;
		case "WHEEL":      ema = "wheel"; break;
		case "CARTART":    ema = "cartart"; break;
	}
	local extra_menu_art = extra_menu.add_artwork( ema, flh*eam, flh*eam, flw*ebw-flh*eam*2.00, flh*ebh*eah-flh*eam*2.00 );
	extra_menu_art.preserve_aspect_ratio = true;
	if ( my_config["ema_opt"] == "SCREENSHOT") extra_menu_art.video_flags = Vid.ImagesOnly;
	
	function extra_menu_title( index_offset ) {
		local path = null;
		if ( my_config["ema_opt"] == "SCREENSHOT") path = fe.get_art( "snap", 0 , 0 , Art.Default | Art.ImagesOnly );
		else path = fe.get_art( ema, 0 , 0 , Art.Default );
		if ( path == "" || my_config["ema_opt"] == "NO" ) {
			local text = split( fe.game_info(Info.Title, index_offset), "(/[" );
			if ( text.len() > 0 ) return text[0].toupper();
			text = split( fe.game_info( Info.Name, index_offset ), "(/[" );
			if ( text.len() > 0 ) return text[0].toupper();
		}
		else return "";		//  this return avoid the null error on screen
	}
	local extra_menu_title = extra_menu.add_text ( "[!extra_menu_title]", flh*eam, flh*eam, flw*ebw-flh*eam*2.00, flh*ebh*eah-flh*eam*2.00 );
	extra_menu_title.font = ffr;
	extra_menu_title.align = Align.MiddleCentre;
	extra_menu_title.charsize = extra_menu_art.height*etc;
	extra_menu_title.margin = 0;
	extra_menu_title.line_spacing = extra_menu_art.height*ets;
	extra_menu_title.word_wrap = true;
	if ( my_config["tit_opt"] == "BY SYSTEM") colors_by_system_2( extra_menu_title, 8, anq, ant, 0 );
	else if ( my_config["tit_opt"] == "BY GENRE") color_by_category( extra_menu_title, 0, anq, ant, 0 );
	else colors( extra_menu_title, my_config["tit_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( extra_menu_title, "blue", 2 );
	
	function extra_text( index_offset, var ) {
		local text = fe.game_info(Info.Extra, 0);
		if (text != "") return text.toupper();
		else return "MISSING EXTRA";
	}
	local eeo = "";
	if ( my_config["eeo_opt"] == "EXTRA" ) eeo = "[!extra_text]";
	else eeo = "[Overview]";
	local extra_menu_extra = extra_menu.add_text ( eeo, flh*eam, flh*eam+extra_menu_art.height+flh*eas, flw*ebw-flh*eam*2.00, flh*ebh-flh*eas-extra_menu_art.height-flh*eam*2.00 );
	extra_menu_extra.font = ffr;
	extra_menu_extra.align = Align.TopLeft;
	extra_menu_extra.charsize = flh*eec;
	extra_menu_extra.word_wrap = true;
	extra_menu_extra.margin = 0;
	extra_menu_extra.line_spacing = ees;
	if ( my_config["tit_opt"] == "BY SYSTEM") colors_by_system_2( extra_menu_extra, 8, anq, ant, 0 );
	else if ( my_config["tit_opt"] == "BY GENRE") color_by_category( extra_menu_extra, 0, anq, ant, 0 );
	else colors( extra_menu_extra, my_config["tit_opt"], 0 );
	if ( my_config["tbg_opt"] == "YES" ) colors( extra_menu_extra, "blue", 2 );

	animation.add( PropertyAnimation( extra_menu, { when=Transition.ToNewList, property="y", end=extra_menu.y, time=ant }));
	animation.add( PropertyAnimation( extra_menu, { when=Transition.ToNewSelection, property="y", end=extra_menu.y, time=ant }));
	animation.add( PropertyAnimation( extra_menu, { when=Transition.ToNewSelection, property="y", start=extra_menu.y, end=flh*eby-flh*ebh*0.50, time=ant*anm*2, delay=aed, tween=Tween.Elastic }));
}


/////////// SOUNDS
local click = fe.add_sound("");
fe.add_transition_callback( "click" );
function click( ttype, var, ttime ) {
	if ( ttype == Transition.ToNewSelection ) {
		local path = null;
		if (fe.get_input_state("Up") == true) {
			if ( my_config["art_opt"] == "SCREENSHOT") path = fe.get_art( "snap", -1 , 0 , Art.Default | Art.ImagesOnly );
			else if ( my_config["art_opt"] == "VIDEO") path = fe.get_art( "snap", -1 , 0 , Art.Default );	
			if ( path != "" ) {
				click.file_name = "click.wav";
				if ( my_config["sou_opt"] == "YES") click.playing = true;
			}
			else {
				click.file_name = "error.wav";
				if ( my_config["sou_opt"] == "YES") click.playing = true;
			}
		}
		else if (fe.get_input_state("Down") == true) {
			if ( my_config["art_opt"] == "SCREENSHOT") path = fe.get_art( "snap", 1 , 0 , Art.Default | Art.ImagesOnly );
			else if ( my_config["art_opt"] == "VIDEO") path = fe.get_art( "snap", 1 , 0 , Art.Default );	
			if ( path != "" ) {
				click.file_name = "click.wav";
				if ( my_config["sou_opt"] == "YES") click.playing = true;
			}
			else {
				click.file_name = "error.wav";
				if ( my_config["sou_opt"] == "YES") click.playing = true;
			}
		}
	}
}