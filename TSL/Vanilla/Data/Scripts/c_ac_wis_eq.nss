// c_ac_wis_eq
// Parameter Count: 1
// Param1 - The value to check the Wisdom ability score against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetAbilityScore( GetPCSpeaker(), ABILITY_WISDOM ) == nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
