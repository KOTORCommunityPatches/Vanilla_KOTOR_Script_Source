// c_lighttotal_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the PC's Light Side point
// accumulator against.
// Param2 - The upper value (inclusive) to check the PC's Light Side point
// accumulator against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    int nLightTotal = GetGlobalNumber( "G_PC_Light_Total" );
    if( ( nLightTotal >= nCompareLowAmt ) &&
        ( nLightTotal <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
