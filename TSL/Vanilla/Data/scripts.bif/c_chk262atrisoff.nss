// c_chk262atrisoff
// Parameter Count: 1
// Param1 - Checks to see if set to #
// Generic script to check if the player is helping or harming Atris.
// CFA: 1-10-04

#include "k_inc_debug"

int StartingConditional()
{

    int nAtrisOff = GetScriptParameter( 1 );

    if( GetGlobalNumber("262TEL_Atris_Offer") == nAtrisOff ) return TRUE;
    return FALSE;

}
