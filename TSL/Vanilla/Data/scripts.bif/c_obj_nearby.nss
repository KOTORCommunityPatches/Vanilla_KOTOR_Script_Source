
//:: c_obj_nearby
/*
    String Parameter: Tag of object

    Checks to see if specified object (by tag) is nearby
*/
//:: Created By: Michael Chu

#include "k_inc_debug"

int StartingConditional()
{
    string tString = GetScriptStringParameter();

    if( GetDistanceBetween( GetFirstPC(), GetObjectByTag( tString ) ) <= 10.0 )
    {
        return TRUE;
    }

    return FALSE;
}
