// c_area
// Parameter Count: 1
// Param1 - The name of the area.
// Check to see if player is in "Param 1" area.
// CFA: 8-21-04

int StartingConditional()
{

    string tArea = GetScriptStringParameter();

    if ( GetModuleName() == tArea )
    {
        return TRUE;
    }
    return FALSE;

}
