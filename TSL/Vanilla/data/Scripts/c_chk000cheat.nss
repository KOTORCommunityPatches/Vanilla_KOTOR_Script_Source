// c_chk000cheat
// Parameter Count: 1
// Param1 - Checks to see if set to #
// Checks to see if cheat mode is on.
// CFA: 1-10-04

#include "k_inc_debug"

int StartingConditional()
{

    int n000cheat = GetScriptParameter( 1 );

    if( GetGlobalNumber("000_Cheat") == n000cheat ) return TRUE;
    return FALSE;

}
