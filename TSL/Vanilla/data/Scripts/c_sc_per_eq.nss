// c_sc_per_eq
// Parameter Count: 1
// Param1 - The value to check the Persuade skill against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetSkillRank( SKILL_PERSUADE, GetPCSpeaker() ) == nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
