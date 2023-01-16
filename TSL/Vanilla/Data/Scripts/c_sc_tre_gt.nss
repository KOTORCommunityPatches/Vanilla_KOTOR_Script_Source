// c_sc_tre_gt
// Parameter Count: 1
// Param1 - The value to check the Treat Injury skill against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetSkillRank( SKILL_TREAT_INJURY, GetPCSpeaker() ) > nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
