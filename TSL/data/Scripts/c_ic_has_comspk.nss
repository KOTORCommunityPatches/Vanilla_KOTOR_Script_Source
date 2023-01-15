// c_ic_has_comspk
// Parameter Count: 1
// Param1 - The number of Computer Spikes we want to see if the PC has.

#include "k_inc_utility"

int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( UT_ReturnSpikePartAmount( SKILL_COMPUTER_USE ) >= nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
