// Needed this custom script to fix T3's skills.

#include "k_inc_debug"
int StartingConditional()
{
    string tString = GetScriptStringParameter();
    int tInt = GetScriptParameter( 1 );

    if( ( GetGlobalNumber("000_T3_Lvl_Damage") == 1)
            && ( GetGlobalNumber("000_T3_Repair") == 0) )
    {
        return TRUE;
    }
    return FALSE;
}
