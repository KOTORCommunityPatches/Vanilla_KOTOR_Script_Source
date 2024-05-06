// c_sc_awa_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Awareness skill against.
// Param2 - The upper value (inclusive) to check the Awareness skill against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetSkillRank( SKILL_AWARENESS, GetPCSpeaker() ) >= nCompareLowAmt ) &&
        ( GetSkillRank( SKILL_AWARENESS, GetPCSpeaker() ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
