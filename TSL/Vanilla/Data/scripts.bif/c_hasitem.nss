// c_hasitem
/*
    Returns true if the PC has the item
*/
// TDE 7/28/04

int StartingConditional()
{
    string sTag = GetScriptStringParameter();
    if ( GetIsObjectValid( GetItemPossessedBy( GetFirstPC(), sTag))) return TRUE;

    return FALSE;
}
