//:: k_con_comver45
/*
     Verify that this option has not
     been used elsewhere already in
     the module.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    if(UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_REPAIR_ACTIVATE_PATROL_ROUTE))
    {
        return FALSE;
    }
    return TRUE;
}

