//:: k_con_atforge
/*
    Is the PC on the Star Forge
    Planet Global Setting
    VARIABLE = K_CURRENT_PLANET
        Endar Spire - 5  Taris - 10
        Dantooine - 15   Kashyyk - 20
        Manaan - 25      Korriban - 30
        Tatooine - 35    Leviathan - 40
        Unk Wrld - 45    Star Forge - 50
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nPlanet = GetGlobalNumber("K_CURRENT_PLANET");
    if(nPlanet == 50)
    {
        return TRUE;
    }
    return FALSE;
}
