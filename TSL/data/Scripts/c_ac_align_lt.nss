// c_ac_align_lt
// Parameter Count: 1
// Param1 - Is this value LESS THAN the PC Alignment.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetGlobalNumber( "G_PC_Align_Val" ) < nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
