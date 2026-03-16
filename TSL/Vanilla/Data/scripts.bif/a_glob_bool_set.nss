//:: a_glob_bool_set
/*
    Used to set the value of a Global Boolean
    parameter 1 = string identifier for a global number
    parameter 2 = 0 = FALSE, anytthing else is TRUE
*/
//:: Created By: Anthony Davis

#include "k_inc_debug"
void main()
{
    string tString = GetScriptStringParameter();
    int tSetting = GetScriptParameter( 1 );
    if(tSetting == 0)
    {
        SetGlobalBoolean(tString, FALSE);
    }
    else
    {
        SetGlobalBoolean(tString, TRUE);
    }
}
