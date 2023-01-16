// c_chk262freeCNPC
// Parameter Count: 1
// Param1 - Checks to see if set to #
// Script to check to see if the player has freed the CNPCs in 262TEL yet.
// CFA: 1-10-04

#include "k_inc_debug"

int StartingConditional()
{

    int n262CNPCfree = GetScriptParameter( 1 );

    if( GetGlobalNumber("262TEL_CNPC_Freed") == n262CNPCfree ) return TRUE;
    return FALSE;

}
