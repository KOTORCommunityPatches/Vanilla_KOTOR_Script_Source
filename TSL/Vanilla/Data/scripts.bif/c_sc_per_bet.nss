// c_sc_per_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Persuade skill against.
// Param2 - The upper value (inclusive) to check the Persuade skill against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetSkillRank( SKILL_PERSUADE, GetPCSpeaker() ) >= nCompareLowAmt ) &&
        ( GetSkillRank( SKILL_PERSUADE, GetPCSpeaker() ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
