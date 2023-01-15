// c_sc_ste_gt
// Parameter Count: 1
// Param1 - The value to check the Stealth skill against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetSkillRank( SKILL_STEALTH, GetPCSpeaker() ) > nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
