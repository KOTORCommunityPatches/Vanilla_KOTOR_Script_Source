// c_chk262atttlk
// Parameter Count: 2
// Param1 - Checks to see if already set.
// Param2 - If it isn't set to Param1, set to Param 2
// Generic script to check Atton's speech in 262.
// CFA: 1-10-04

#include "k_inc_debug"

int StartingConditional()
{
    //Check to see what state Atton's dialogue is at in 262, then resets it
    //if necessary.

    int n262AttTalk = GetScriptParameter( 1 );
    int n262AttTalk2 = GetScriptParameter( 2 );

    if( GetGlobalNumber("262TEL_Atton_Talk") == n262AttTalk ) {
        SetGlobalNumber("262TEL_Atton_Talk", n262AttTalk2);
        return TRUE;
    }
    return FALSE;

}
