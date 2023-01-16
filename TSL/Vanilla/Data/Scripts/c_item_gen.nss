//:: c_itemgen
/*
    checks if npc can make an item
*/
//:: Created By:  Anthony Davis
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_item_gen"

// returns TRUE if the NPC can make an item.
int StartingConditional()
{
    if( GetIsEquipmentNeeded() )
    {
        return TRUE;
    }
    return FALSE;
}

