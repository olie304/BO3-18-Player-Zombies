#using scripts\codescripts\struct;

#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#insert scripts\shared\shared.gsh;

#namespace clientids;

REGISTER_SYSTEM( "clientids", &__init__, undefined )
	
function __init__()
{
	callback::on_start_gametype( &init );
	callback::on_connect( &on_player_connect );
    level.player_too_many_players_check = 0;
    level.player_too_many_players_check_func = &player_too_many_players_check_func;
}	

function init()
{
	// this is now handled in code ( not lan )
	// see s_nextScriptClientId 
	level.clientid = 0;
    level.player_too_many_players_check = 0;
    level.player_too_many_players_check_func = &player_too_many_players_check_func;
}

function on_player_connect()
{
	self.clientid = matchRecordNewPlayer( self );
	if ( !isdefined( self.clientid ) || self.clientid == -1 )
	{
		self.clientid = level.clientid;
        iPrintln("^3Client " + level.clientid + " Joined");
		level.clientid++;	// Is this safe? What if a server runs for a long time and many people join/leave
	}

}

function player_too_many_players_check_func()
{
    iPrintln("^9Stopped Max Players Check");
}
 