// c_ac_int_eq
// Parameter Count: 1
// Param1 - The value to check the Intelligence ability score against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetAbilityScore( GetPCSpeaker(), ABILITY_INTELLIGENCE ) == nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
