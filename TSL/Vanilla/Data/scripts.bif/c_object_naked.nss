// c_object_naked: Check if OBJECT_SELF has any item equiped in Body/Armor slot.
// BMA-OEI 8/9/2004

int StartingConditional()
{
    object oObject = OBJECT_SELF;
    object oItem   = GetItemInSlot(INVENTORY_SLOT_BODY, oObject);
    if ( GetIsObjectValid(oItem) ) // Check if item exists.
        return FALSE;
    return TRUE;
}
