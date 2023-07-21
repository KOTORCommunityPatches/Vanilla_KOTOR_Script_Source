//:: k_pman_race_s_04
/*
     The player has won at least one race but
     not Champion yet on manaan.
     random 4 of 4 to be placed on 4th from bottom.
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_man"

int StartingConditional()
{
    if ((GetManaanRaceStateGlobal() > 0) &&
        (Random(4) == 0))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}



