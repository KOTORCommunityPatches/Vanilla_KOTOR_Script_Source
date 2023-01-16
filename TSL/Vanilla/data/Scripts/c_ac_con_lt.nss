// c_ac_con_lt
// Parameter Count: 1
// Param1 - The value to check the Constitution ability score against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetAbilityScore( GetPCSpeaker(), ABILITY_CONSTITUTION ) < nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
