//:: k_pman_race_3_03
/*
     The player has won TWO of the races on manaan.
     random 3 of 4 to be placed on Third from bottom.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() == 2) &&
        (Random(3) == 0))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}





