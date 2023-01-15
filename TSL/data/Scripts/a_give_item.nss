// a_give_item
// Parameter Count: 2
// Param1 - The number of the item to give to the player.
// Param2 - item's resref (as a string)
// This script gives the number of the item designated
// in the parameter to the player.
//
// KDS, 07/23/04
void main() {

    int nQuantity = GetScriptParameter( 1 );
    string sItem = GetScriptStringParameter();

    if(nQuantity == 0) nQuantity = 1;
    CreateItemOnObject( sItem, GetPartyLeader(), nQuantity );
}
