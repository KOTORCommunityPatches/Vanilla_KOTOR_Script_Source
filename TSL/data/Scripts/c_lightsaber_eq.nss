//  c_lightsaber_eq
/*
    Does the Party Leader have a Lightsaber equipped?
*/
//  Created By:  Tony Evans 10/25/04

int StartingConditional()
{
    object oWeap = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, GetPartyLeader());

    if (FindSubString(GetName(oWeap), "Lightsaber") != -1)
        return TRUE;

    return FALSE;
}
