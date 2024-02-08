// c_sc_com_gt
// Parameter Count: 1
// Param1 - The value to check the Computer Use skill against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetSkillRank( SKILL_COMPUTER_USE, GetPCSpeaker() ) > nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
