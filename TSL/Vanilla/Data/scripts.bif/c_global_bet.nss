
//:: c_global_lt
/*
    parameter 1 = string identifier for a global number
    parameter 2 = int value to compare to GetGlobalNumber(param1)
    parameter 3 = int value to compare to GetGlobalNumber(param1)
    returns TRUE if param1 is BETWEEN param2 and param3 (inclusive).
*/
//:: Created By: Anthony Davis

#include "k_inc_debug"
int StartingConditional()
{
    string tString = GetScriptStringParameter();
    int tInt  = GetScriptParameter( 1 );//lowerbound
    int tInt2 = GetScriptParameter( 2 );//upperbound

    if(( GetGlobalNumber(tString) >= tInt ) && ( GetGlobalNumber(tString) <= tInt2 ))
    {
        return TRUE;
    }
    return FALSE;
}
