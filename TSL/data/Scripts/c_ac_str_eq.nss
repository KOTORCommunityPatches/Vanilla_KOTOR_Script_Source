// c_ac_str_eq
// Parameter Count: 1
// Param1 - The value to check the Strength ability score against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetAbilityScore( GetPCSpeaker(), ABILITY_STRENGTH ) == nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
