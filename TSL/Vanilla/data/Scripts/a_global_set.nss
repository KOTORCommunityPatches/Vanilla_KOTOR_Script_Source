
//:: a_global_dec
/*
    parameter 1 = string identifier for a global number
    parameter 2 = value to be assigned to GetGlobalNumber(param1)
*/
//:: Created By: Anthony Davis

#include "k_inc_debug"
void main()
{
    string tString = GetScriptStringParameter();
    int tInt = GetScriptParameter( 1 );

    SetGlobalNumber(tString, tInt);
}
