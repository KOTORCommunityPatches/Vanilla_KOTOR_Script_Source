//  c_is_valid
/*
    Checks to see if the object with the specified tag is valid
*/
//  Tony Evans 10/13/04

int StartingConditional()
{
    string sTag = GetScriptStringParameter();

    object oObj = GetObjectByTag(sTag);

    if ( GetIsObjectValid(oObj) )
        return TRUE;

    return FALSE;
}
