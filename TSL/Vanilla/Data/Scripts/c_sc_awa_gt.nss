// c_sc_awa_gt
// Parameter Count: 1
// Param1 - The value to check the Awareness skill against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetSkillRank( SKILL_AWARENESS, GetPCSpeaker() ) > nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
