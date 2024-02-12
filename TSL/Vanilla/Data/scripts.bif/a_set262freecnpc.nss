// a_set262freeCNPC
// Parameter Count: 1
// Param1 - Checks to see if set to #
// This checks to see if the player freed Atton and Kreia in 262TEL.
// CFA: 1-10-04

#include "k_inc_debug"

void main()
{
    int nNum = GetScriptParameter( 1 );

    SetGlobalNumber ( "262TEL_CNPC_Freed", nNum);
}
