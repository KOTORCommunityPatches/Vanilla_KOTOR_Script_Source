//  a_move_wp
/*
    The NPC that triggers the script walks or runs to waypoint after a delay
    sWaypoint - The tag of the wapoint to move to (default "wp_<Tag>")
    iRun      - The flag for whether to run or not (0 = walk)
    iDelay    - The delay in seconds before the object will move
    iPlot     - Keep the PC from interacting with the NPC as it walks away
*/
//  Created By:  Tony Evans 8/5/04

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    string sWaypoint = GetScriptStringParameter();
    int iRun = GetScriptParameter(1);
    int iDelay = GetScriptParameter(2);
    int iPlot = GetScriptParameter(3);

    // If no waypoint specified, set waypoint to "wp_<Tag>"
    if (sWaypoint == "") sWaypoint = "wp_" + GetTag(OBJECT_SELF);

    if (iPlot) DelayCommand( IntToFloat(iDelay), ActionDoCommand(SetCommandable(TRUE)));

    // Move object to waypoint
    DelayCommand( IntToFloat(iDelay), ActionForceMoveToObject(GetObjectByTag(sWaypoint), iRun) );

    if (iPlot) DelayCommand( IntToFloat(iDelay), SetCommandable(FALSE));
}
