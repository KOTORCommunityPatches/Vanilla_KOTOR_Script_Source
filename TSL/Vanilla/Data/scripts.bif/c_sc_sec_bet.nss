// c_sc_sec_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Security skill against.
// Param2 - The upper value (inclusive) to check the Security skill against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetSkillRank( SKILL_SECURITY, GetPCSpeaker() ) >= nCompareLowAmt ) &&
        ( GetSkillRank( SKILL_SECURITY, GetPCSpeaker() ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
