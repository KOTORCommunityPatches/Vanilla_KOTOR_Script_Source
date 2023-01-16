// c_sc_com_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Computer Use skill against.
// Param2 - The upper value (inclusive) to check the Computer Use skill against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetSkillRank( SKILL_COMPUTER_USE, GetPCSpeaker() ) >= nCompareLowAmt ) &&
        ( GetSkillRank( SKILL_COMPUTER_USE, GetPCSpeaker() ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
