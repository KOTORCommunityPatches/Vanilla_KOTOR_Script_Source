// This global script adjusts the stats for any critter based on tag.
// Used mostly for CNPC scripts.
// Param 1 = Amount Changed, Param 2 = Actual Stat Changed.
// (1) STR, (2) INT, (3) WIS, (4) DEX, (5) CON, (6) CHA.
// CFA - 10-17-04

void main()
{
    int tValue = GetScriptParameter( 1 );
    int tStat = GetScriptParameter( 2 );
    object oTemp = GetObjectByTag(GetScriptStringParameter());

    if(GetIsObjectValid(oTemp) && ( tStat == 1 ) )
        AdjustCreatureAttributes(oTemp, ABILITY_STRENGTH, tValue);

    if(GetIsObjectValid(oTemp) && ( tStat == 2 ) )
        AdjustCreatureAttributes(oTemp, ABILITY_INTELLIGENCE, tValue);

    if(GetIsObjectValid(oTemp) && ( tStat == 3 ) )
        AdjustCreatureAttributes(oTemp, ABILITY_WISDOM, tValue);

    if(GetIsObjectValid(oTemp) && ( tStat == 4 ) )
        AdjustCreatureAttributes(oTemp, ABILITY_DEXTERITY, tValue);

    if(GetIsObjectValid(oTemp) && ( tStat == 5 ) )
        AdjustCreatureAttributes(oTemp, ABILITY_CONSTITUTION, tValue);

    if(GetIsObjectValid(oTemp) && ( tStat == 6 ) )
        AdjustCreatureAttributes(oTemp, ABILITY_CHARISMA, tValue);
}
