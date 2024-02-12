// c_pc_worn_body: Check if First PC is wearing ItemByTag in Body slot.
//     INPUT: string param - tag of armor
// BMA-OEI 8/9/2004

int StartingConditional()
{
    string sItem = GetScriptStringParameter();
    object oItem = GetObjectByTag(sItem);
    if ( GetIsObjectValid(oItem) )
    {
        if ( GetItemInSlot(INVENTORY_SLOT_BODY, GetFirstPC()) == oItem )
        {
            return TRUE; // Item exists and is equipped in Body slot.
        }
    }
    return FALSE;
}
