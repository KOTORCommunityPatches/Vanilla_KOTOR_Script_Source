// a_giveparts
// Parameter Count: 1
// Param1 - The number of parts to give the player.
// This script gives the number of repair parts designated
// in the parameter to the player.
void main() {

    int nValue = GetScriptParameter( 1 );
    CreateItemOnObject( "g_i_parts01", GetFirstPC(), nValue );
}
