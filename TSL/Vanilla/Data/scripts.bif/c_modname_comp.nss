/*
    Returns TRUE if the passed in string paramter is equal to
    the current module name.

    Created by: Anthony Davis-OEI
*/
int StartingConditional()
{
    string modName = GetScriptStringParameter();
    string currentMod = GetModuleName();
    if(modName == currentMod)
        return TRUE;
    return FALSE;
}
