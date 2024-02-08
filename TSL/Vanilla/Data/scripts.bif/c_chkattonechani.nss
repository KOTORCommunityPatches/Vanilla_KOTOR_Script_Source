// c_chkattonechani
// Parameter Count: 1
// Param1 - Checks to see if set to #
// Script to check if player learned Atton knows Echani methods.
// CFA: 1-10-04

#include "k_inc_debug"

int StartingConditional()
{

    int n106perend = GetScriptParameter( 1 );

    if( GetGlobalNumber("262TEL_Atton_Echani") == n106perend ) return TRUE;
    return FALSE;

}
