// c_ac_con_bet
// Parameter Count: 2
// Param1 - The lower value (inclusive) to check the Constitution ability score against.
// Param2 - The upper value (inclusive) to check the Constitution ability score against.
int StartingConditional()
{
    int nCompareLowAmt = GetScriptParameter( 1 );
    int nCompareHighAmt = GetScriptParameter( 2 );
    if( ( GetAbilityScore( GetPCSpeaker(), ABILITY_CONSTITUTION ) >= nCompareLowAmt ) &&
        ( GetAbilityScore( GetPCSpeaker(), ABILITY_CONSTITUTION ) <= nCompareHighAmt ) ) {
        return TRUE;
    }
    return FALSE;
}
