// c_darktotal_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the PC's Dark Side point
// accumulator against.
// Param2 - The upper value (inclusive) to check the PC's Dark Side point
// accumulator against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    int nDarkTotal = GetGlobalNumber( "G_PC_Dark_Total" );
    if( ( nDarkTotal >= nCompareLowAmt ) &&
        ( nDarkTotal <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
