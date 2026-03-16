// c_ac_cha_eq
// Parameter Count: 1
// Param1 - The value to check the Charisma ability score against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetAbilityScore( GetPCSpeaker(), ABILITY_CHARISMA ) == nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
