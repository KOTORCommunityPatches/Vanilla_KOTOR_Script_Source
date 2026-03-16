
//:: c_global_eq
/*
    parameter 1 = string identifier for a global number
    parameter 2 = value to compare to GetGlobalNumber(param1)
    returns TRUE if values are EQUAL.
*/
//:: Created By: Anthony Davis

#include "k_inc_debug"
int StartingConditional()
{
    string tString = GetScriptStringParameter();
    int tInt = GetScriptParameter( 1 );

    if( GetGlobalNumber(tString) == tInt )
    {
        return TRUE;
    }
    return FALSE;
}
