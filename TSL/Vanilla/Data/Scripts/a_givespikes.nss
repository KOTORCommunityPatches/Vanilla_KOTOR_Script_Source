// a_givespikes
// Parameter Count: 1
// Param1 - The number of computer spikes to give the player.
// This script gives the number of computer spikes designated
// in the parameter to the player.
void main() {

    int nValue = GetScriptParameter( 1 );
    CreateItemOnObject( "g_i_progspike01", GetFirstPC(), nValue );
}
