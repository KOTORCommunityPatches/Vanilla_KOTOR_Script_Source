// c_lighttotal_lt
// Parameter Count: 1
// Param1 - The value to check the PC's Light Side point accumulator against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    int nLightTotal = GetGlobalNumber( "G_PC_Light_Total" );
    if( nLightTotal < nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
