// c_sc_ste_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Stealth skill against.
// Param2 - The upper value (inclusive) to check the Stealth skill against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetSkillRank( SKILL_STEALTH, GetPCSpeaker() ) >= nCompareLowAmt ) &&
        ( GetSkillRank( SKILL_STEALTH, GetPCSpeaker() ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
