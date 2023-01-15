
//:: c_glob_bool_set
/*
    parameter is string identifier for a global number.
    returns TRUE if param1 is NOT ZERO.
*/
//:: Created By: Anthony Davis

#include "k_inc_debug"
int StartingConditional()
{
    string tString = GetScriptStringParameter();

    if( GetGlobalBoolean(tString) )
    {
        return TRUE;
    }
    return FALSE;
}
