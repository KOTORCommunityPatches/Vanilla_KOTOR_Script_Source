// c_ac_dex_gt
// Parameter Count: 1
// Param1 - The value to check the Dexterity ability score against.
int StartingConditional()
{
    int nCompareAmt = GetScriptParameter( 1 );
    if( GetAbilityScore( GetPCSpeaker(), ABILITY_DEXTERITY ) > nCompareAmt ) {
        return TRUE;
    }
    return FALSE;
}
