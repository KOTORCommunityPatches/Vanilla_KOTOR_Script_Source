// c_darktotal_gt
// Parameter Count: 1
// Param1 - The value to check the PC's Dark Side point accumulator against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    int nDarkTotal = GetGlobalNumber( "G_PC_Dark_Total" );
    if( nDarkTotal > nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
