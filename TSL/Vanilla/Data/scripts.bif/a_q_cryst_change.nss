//:: a_q_cryst_change
/*

Takes the quest crystal the player has, if any.
Gives the player the appropriate quest crystal for their alignment/level

*/
//:: Created By: Kevin Saunders, 06/26/04
//:: Copyright 2004 Obsidian Entertainment
#include "k_inc_q_crystal"

void main()
{

    int nCrystalCurrent = GetGlobalNumber("000_Quest_Crystal");
    string sCrystalCurrent = IntToString(nCrystalCurrent);

    object oPC = GetFirstPC();


    //determine the tag of the old crystal
    string sCrystalTag = "qcrystal" + "_" +
                        GetStringLeft(sCrystalCurrent, 1) + "_" +
                        GetStringRight(sCrystalCurrent, 1);
    object oCrystal = GetItemPossessedBy(oPC, sCrystalTag);


    //check to see if the player has the old crystal in his inventory or if this is the player's 1st crystal
    if(GetIsObjectValid(oCrystal) || (nCrystalCurrent == 0))
        {
            int nCrystalLevelLocal = GetCrystalLevel();
            string sCrystalLevelLocal = IntToString(nCrystalLevelLocal);
            string sPCAlignTypeLocal = GetPCAlignType();

            //determine the tag (resref) of the new crystal
            string sCrystalResRef = "qcrystal" + "_" + sCrystalLevelLocal + "_" + sPCAlignTypeLocal;

            //record what the player's new crystal is like
            SetGlobalNumber("000_Quest_Crystal", StringToInt(sCrystalLevelLocal + sPCAlignTypeLocal));

            //AurPostString(IntToString(nCrystalCurrent),10,11,2.5);
            //AurPostString(IntToString(GetGlobalNumber("000_Quest_Crystal")),10,12,2.5);

            //take the old crystal
            DestroyObject(oCrystal);

            //give the new crystal
            CreateItemOnObject(sCrystalResRef,oPC,1,0);
        }


}
