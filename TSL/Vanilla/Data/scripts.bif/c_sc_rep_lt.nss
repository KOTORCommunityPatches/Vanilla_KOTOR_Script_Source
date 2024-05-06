// c_sc_rep_lt
// Parameter Count: 1
// Param1 - The value to check the Repair skill against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetSkillRank( SKILL_REPAIR, GetPCSpeaker() ) < nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
