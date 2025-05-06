// c_chkcredits
// Parameter Count: 1
// Param1 - Checks to see if PC has # of credits.
// Global script to check for credits.
// CFA: 1-10-04

#include "k_inc_debug"

int StartingConditional()
{

    int nCreditAmount = GetScriptParameter( 1 );

    if( GetGold( GetFirstPC() ) >= nCreditAmount ) {
        return TRUE;
    }
    return FALSE;

}
