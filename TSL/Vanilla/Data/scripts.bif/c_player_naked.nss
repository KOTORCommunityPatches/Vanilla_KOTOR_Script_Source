// c_player_naked: Check if First PC has any item equiped in Body/Armor slot.
// BMA-OEI 8/9/2004

int StartingConditional()
{
    object oObject = GetFirstPC();
    object oItem   = GetItemInSlot(INVENTORY_SLOT_BODY, oObject);
    if ( GetIsObjectValid(oItem) ) // Check if item exists.
        return FALSE;
    return TRUE;
}
