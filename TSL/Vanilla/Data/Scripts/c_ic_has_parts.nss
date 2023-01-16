// c_ic_has_parts
// Parameter Count: 1
// Param1 - The number of Parts we want to see if the PC has.

#include "k_inc_utility"

int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( UT_ReturnSpikePartAmount( SKILL_REPAIR ) >= nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
