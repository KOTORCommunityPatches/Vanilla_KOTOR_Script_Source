// c_sc_tre_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Treat Injury skill against.
// Param2 - The upper value (inclusive) to check the Treat Injury skill against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetSkillRank( SKILL_TREAT_INJURY, GetPCSpeaker() ) >= nCompareLowAmt ) &&
        ( GetSkillRank( SKILL_TREAT_INJURY, GetPCSpeaker() ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
