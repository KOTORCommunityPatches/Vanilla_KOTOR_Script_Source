// c_sc_dem_eq
// Parameter Count: 1
// Param1 - The value to check the Demolitions skill against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetSkillRank( SKILL_DEMOLITIONS, GetPCSpeaker() ) == nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
