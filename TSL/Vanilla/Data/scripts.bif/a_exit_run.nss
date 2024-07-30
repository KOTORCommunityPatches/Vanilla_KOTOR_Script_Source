//:: a_exit_run
/*
    Causes an NPC to run to waypoint
    K_EXIT and destroy self

    iPlot     - Keep the PC from interacting with the NPC as it walks away
*/
//:: Created By:    Preston Watamaniuk
//:: Modified By:   Ferret Baudoin
//:: Modified By:   Tony Evans 10/1/04
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    int nParam1 = GetScriptParameter(1);
    int iPlot = GetScriptParameter(2);

    if (iPlot) DelayCommand( 0.5, ActionDoCommand(SetCommandable(TRUE)));

    DelayCommand( 0.5, UT_ExitArea(TRUE,nParam1) );

    if (iPlot) DelayCommand( 0.5, SetCommandable(FALSE));

}
