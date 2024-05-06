// a_fab_spawn
/*
    Spawns a single creature
    String (sTag)   - The tag of the creature you want to spawn
    Param1 (iInst)  - The instance of the object
    Param2 (iDelay) - The delay (whole number) before spawning

    Note, creature will spawn at waypoint "sp_<sTag><iInst>"
    For example, if you wanted to spawn "evil_jedi", place a waypoint called "sp_evil_jedi"
*/
// Created by TDE 7/29/04

#include "k_inc_fab"

void SpawnSith(string sCrt, int iNum = 0)
{
    FAB_Spawn( sCrt, iNum );
}

void main()
{
    string sTag = GetScriptStringParameter();
    int iInst = GetScriptParameter(1);
    int iDelay = GetScriptParameter(2);

    AurPostString("Spawning " + sTag + " at sp_" + sTag + IntToString(iInst), 5, 5, 5.0);
    DelayCommand(IntToFloat(iDelay), SpawnSith(sTag, iInst));

}
