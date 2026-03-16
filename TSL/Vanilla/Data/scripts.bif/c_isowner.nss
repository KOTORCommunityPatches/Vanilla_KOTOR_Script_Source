// c_isowner
/*
    Is the object with the specified tag the OWNER?
*/
// TDE 8/26/04

int StartingConditional()
{
    string sTag = GetScriptStringParameter();
    if ( sTag == GetTag(OBJECT_SELF)) return TRUE;

    return FALSE;
}
