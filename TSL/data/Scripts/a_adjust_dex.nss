//adjusts DEXTERITY by the value of GetSCriptParameter( 1 )
void main()
{
    int tValue = GetScriptParameter( 1 );
    AdjustCreatureAttributes(GetFirstPC(), ABILITY_DEXTERITY, tValue);
}
