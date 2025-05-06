//:: c_q_cryst_change
/*

Returns TRUE if the player could get a new crystal.
Returns FALSE if the crystal the player would get is the same as the one he has.

*/
//:: Created By: Kevin Saunders, 06/26/04
//:: Copyright 2004 Obsidian Entertainment
#include "k_inc_q_crystal"

int StartingConditional()
{
    int nLocal = GetScriptParameter(1);

    int nCrystalLevelLocal = GetCrystalLevel();
    string sCrystalLevelLocal = IntToString(nCrystalLevelLocal);

    string sPCAlignTypeLocal = GetPCAlignType();
    string sCrystal = sCrystalLevelLocal + sPCAlignTypeLocal;

    int nCrystalCurrent = GetGlobalNumber("000_Quest_Crystal");

    //player doesn't have a crystal yet.
    if(nCrystalCurrent == 0) return 1;
    else
    if(nLocal == 0)
    {
        return(nCrystalCurrent != StringToInt(sCrystal));
    }
    else
    {
        string sCrystalCurrent = IntToString(nCrystalCurrent);
        string sCrystalTag = "qcrystal" + "_" +
                GetStringLeft(sCrystalCurrent, 1) + "_" +
                GetStringRight(sCrystalCurrent, 1);

        AurPostString(sCrystalTag,10,12,2.0);

        return((nCrystalCurrent != StringToInt(sCrystal)) &&
                GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), sCrystalTag)));

    }

}
