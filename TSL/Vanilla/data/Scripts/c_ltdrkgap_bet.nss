// c_ltdrkgap_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the difference between the
// PC's Dark/Light Side point accumulators against.
// Param2 - The upper value (inclusive) to check the difference between the
// PC's Dark/Light Side point accumulators against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );

    // Calculate the gap between the Light and Dark Side
    // alignment point totals.
    int nLightTotal = GetGlobalNumber( "G_PC_Light_Total" );
    int nDarkTotal = GetGlobalNumber( "G_PC_Dark_Total" );
    int nGap = nLightTotal + nDarkTotal;
    if( ( nGap >= nCompareLowAmt ) &&
        ( nGap <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
