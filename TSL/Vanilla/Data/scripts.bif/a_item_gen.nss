//:: a_item_gen.nss
/*
    This actually perfroms the script used to generate items on the PC based on the
    NPC being spoken to.
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_item_gen"

void main()
{
    if( GetIsEquipmentNeeded() )
    {
        CreateEquipmentOnPC();
    }
}
