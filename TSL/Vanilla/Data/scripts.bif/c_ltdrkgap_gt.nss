// c_ltdrkgap_gt
// Parameter Count: 1
// Param1 - The value to check the difference between the
// PC's Dark/Light Side point accumulators against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );

    // Calculate the gap between the Light and Dark Side
    // alignment point totals.
    int nLightTotal = GetGlobalNumber( "G_PC_Light_Total" );
    int nDarkTotal = GetGlobalNumber( "G_PC_Dark_Total" );
    int nGap = nLightTotal + nDarkTotal;
    if( nGap > nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
