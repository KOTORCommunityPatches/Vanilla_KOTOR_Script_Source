//:: c_have_item
/*

Returns TRUE if the player has at least Param1 of the item with the
tag specified in the StringParameter.

*/
//:: Created By: Kevin Saunders, 07/23/04
//:: Copyright 2004 Obsidian Entertainment
int StartingConditional()
{
    int nQuantity = GetScriptParameter( 1 );
    int i;
    string sItem = GetScriptStringParameter();

    if(nQuantity == 0) nQuantity = 1;

    object oItem = GetItemPossessedBy (GetPartyLeader(),sItem);
    if (GetIsObjectValid(oItem))
    {
        int nStackSize = GetItemStackSize(oItem);
        return (nQuantity <= nStackSize);
    }
    return 0;
}
