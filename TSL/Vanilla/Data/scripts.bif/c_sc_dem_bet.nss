// c_sc_dem_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Demolitions skill against.
// Param2 - The upper value (inclusive) to check the Demolitions skill against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetSkillRank( SKILL_DEMOLITIONS, GetPCSpeaker() ) >= nCompareLowAmt ) &&
        ( GetSkillRank( SKILL_DEMOLITIONS, GetPCSpeaker() ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
