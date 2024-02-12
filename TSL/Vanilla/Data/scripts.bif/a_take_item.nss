// a_take_item
// Parameter Count: 2
// Param1 - The quantity of the item to take from the player.
// Param2 - item's tag (as a string)
// This script takes the quantity of the item designated
// in the parameter from the player.
//
// KDS, 07/23/04
void main() {

    int nQuantity = GetScriptParameter( 1 );
    int i;
    string sItem = GetScriptStringParameter();

if(nQuantity == 0) nQuantity = 1;

    object oItem = GetItemPossessedBy (GetPartyLeader(),sItem);
    if (GetIsObjectValid(oItem))
    {
        int nStackSize = GetItemStackSize(oItem);
        if(nQuantity < nStackSize)
        {
            nQuantity = nStackSize - nQuantity;
            SetItemStackSize(oItem, nQuantity);
        }
        else if(nQuantity > nStackSize || nQuantity == nStackSize)
        {
            DestroyObject(oItem);
        }
    }
}
