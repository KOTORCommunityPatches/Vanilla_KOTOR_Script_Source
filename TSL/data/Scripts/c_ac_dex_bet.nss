// c_ac_dex_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Dexterity ability score against.
// Param2 - The upper value (inclusive) to check the Dexterity ability score against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetAbilityScore( GetPCSpeaker(), ABILITY_DEXTERITY ) >= nCompareLowAmt ) &&
        ( GetAbilityScore( GetPCSpeaker(), ABILITY_DEXTERITY ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
