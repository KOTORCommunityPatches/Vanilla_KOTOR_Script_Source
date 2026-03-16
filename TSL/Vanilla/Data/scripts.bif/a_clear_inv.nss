//  a_clear_inv
/*
    Clear the inventory of an object.
    sTag    - The tag of the object to clear. Default is the PC
*/
//  Created By: Tony Evans 8/29/04

void main()
{
    string sTag = GetScriptStringParameter();

    object oTarget;

    if (sTag == "") oTarget = GetFirstPC();
    else oTarget = GetObjectByTag(sTag);

    // destroy inventory items
    object oItem = GetFirstItemInInventory(oTarget);
    int num;
    while(oItem != OBJECT_INVALID)
    {
        num++;
        AurPostString("Destroying " + GetTag(oItem), 5, num, 5.0);
        // Destroy object and hide feedback
        DestroyObject(oItem, 0.0, TRUE, 0.0, TRUE);
        oItem = GetNextItemInInventory(oTarget);
    }

    // destroy equipped items
    int i;
    for(i = (NUM_INVENTORY_SLOTS - 1); i >= 0; i--)
        DestroyObject(GetItemInSlot(i,oTarget), 0.0, TRUE, 0.0, TRUE);
}
