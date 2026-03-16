// c_ac_int_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Intelligence ability score against.
// Param2 - The upper value (inclusive) to check the Intelligence ability score against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetAbilityScore( GetPCSpeaker(), ABILITY_INTELLIGENCE ) >= nCompareLowAmt ) &&
        ( GetAbilityScore( GetPCSpeaker(), ABILITY_INTELLIGENCE ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
