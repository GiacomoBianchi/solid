// Giacomo Bianchi 02/01/2020
//
// this class returns artwork.file_name according to the list.name
//
// example of usage:
// art_by_manufacturer( "folder/subfolder/", artwork_name );

class art_by_manufacturer {

	//  lista array aggiornata al 14/01/2020
	//  scrivere gli array in minuscolo

	ata =   [ "atari", "atari games" ];
	atl =   [ "atlus" ];
	cap =   [ "capcom" ];
	cav =   [ "cave" ];
	cps1 =  [ "capcom cps-1" ];
	cps2 =  [ "capcom cps-2" ];
	cps3 =  [ "capcom cps-3" ];
	dat  =  [ "data-east", "data east", "data east corporation" ];
	gae =   [ "gaelco" ];
	hud =   [ "hudson", "hudson entertainment", "hudson soft" ];
	ire =   [ "irem", "irem corp." ];
	kan  =  [ "kaneko" ];
	kon  =  [ "konami" ];
	mid  =  [ "midway", "midway games" ];
	nam  =  [ "namco" ];
	nin  =  [ "nintendo" ];
	psi  =  [ "psikyo" ];
	rar =   [ "rare", "rare ltd", "rareware" ];
	seg =   [ "sega" ];
	snk =   [ "snk", "yuki enterprise / snk playmore", "snk playmore" ];
	tai =   [ "taito", "taito corporation" ];

	art = null;
	folder = null;

	constructor( folder_name, artname )
	{
		art = artname;
		folder = folder_name;
		fe.add_transition_callback( this, "system_name" );
	}
		
	function system_name( ttype, var, ttime )
	{
		if ( ttype == Transition.ToNewList || ttype == Transition.ToNewSelection || ttype == Transition.FromOldSelection ) {
			local text = fe.game_info( Info.Manufacturer, 0 ).tolower();
			
			art.file_name = folder + "not_found.png";		// system not found
			
			if ( ata.find(text) > -1 )			art.file_name = folder + "atari.png";
			else if ( atl.find(text) > -1 )		art.file_name = folder + "atlus.png";
			else if ( cap.find(text) > -1 )		art.file_name = folder + "capcom.png";
			else if ( cav.find(text) > -1 )		art.file_name = folder + "cave.png";
			else if ( cps1.find(text) > -1 )	art.file_name = folder + "capcom_cps-1.png";
			else if ( cps2.find(text) > -1 )	art.file_name = folder + "capcom_cps-2.png";
			else if ( cps3.find(text) > -1 )	art.file_name = folder + "capcom_cps-3.png";
			else if ( dat.find(text) > -1 )		art.file_name = folder + "data-east.png";
			else if ( gae.find(text) > -1 )		art.file_name = folder + "gaelco.png";
			else if ( hud.find(text) > -1 )		art.file_name = folder + "hudson_soft.png";
			else if ( ire.find(text) > -1 )		art.file_name = folder + "irem.png";
			else if ( kan.find(text) > -1 )		art.file_name = folder + "kaneko.png";
			else if ( kon.find(text) > -1 )		art.file_name = folder + "konami.png";
			else if ( mid.find(text) > -1 )		art.file_name = folder + "midway.png";
			else if ( nam.find(text) > -1 )		art.file_name = folder + "namco.png";
			else if ( nin.find(text) > -1 )		art.file_name = folder + "nintendo.png";
			else if ( psi.find(text) > -1 )		art.file_name = folder + "psikyo.png";
			else if ( rar.find(text) > -1 )		art.file_name = folder + "rareware.png";
			else if ( seg.find(text) > -1 )		art.file_name = folder + "sega.png";
			else if ( snk.find(text) > -1 )		art.file_name = folder + "snk.png";
			else if ( tai.find(text) > -1 )		art.file_name = folder + "taito.png";
		}
	}
}