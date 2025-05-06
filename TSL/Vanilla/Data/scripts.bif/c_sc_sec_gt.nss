// c_sc_sec_gt
// Parameter Count: 1
// Param1 - The value to check the Security skill against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetSkillRank( SKILL_SECURITY, GetPCSpeaker() ) > nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
