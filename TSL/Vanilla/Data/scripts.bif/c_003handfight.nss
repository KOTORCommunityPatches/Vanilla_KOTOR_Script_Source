//:: c_003handfight
/*
    parameter 1 = string identifier for a global number
    parameter 2 = value to compare to GetGlobalNumber(param1)
    returns TRUE if values are EQUAL.
*/
//:: Created By: Anthony Davis  (modified by CFA 8-30-04)

#include "k_inc_debug"
int StartingConditional()
{
    string tString = GetScriptStringParameter();
    int tInt = GetScriptParameter( 1 );
    int LevelInt = GetScriptParameter( 2 );

    // This checks to see if the player has won a certain tier of fighting with
    // the Handmaiden, and if he's at a good enough level to go on to the next
    // tier.

    if ( ( GetGlobalNumber(tString) == tInt ) && ( GetGlobalNumber ("G_PC_LEVEL") < LevelInt ) )
    {
        return TRUE;
    }
    return FALSE;
}
