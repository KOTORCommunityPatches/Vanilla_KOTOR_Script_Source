// c_sc_rep_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Repair skill against.
// Param2 - The upper value (inclusive) to check the Repair skill against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetSkillRank( SKILL_REPAIR, GetPCSpeaker() ) >= nCompareLowAmt ) &&
        ( GetSkillRank( SKILL_REPAIR, GetPCSpeaker() ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
