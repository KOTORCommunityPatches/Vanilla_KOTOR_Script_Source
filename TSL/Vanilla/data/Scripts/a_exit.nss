//  a_exit
/*
    Causes an NPC to walk or run to specified waypoint and destroy self after a delay
    sWaypoint - The tag of the wapoint to move to (default SW_EXIT)
    iRun      - The flag for whether to run or not (0 = walk)
    iDelay    - The delay in seconds before the object is destroyed
        (if 0, object is destroyed upon reaching the waypoint)
*/
//  Created By:  Tony Evans 8/2/04

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    string sWaypoint = GetScriptStringParameter();
    int iRun = GetScriptParameter(1);
    int iDelay = GetScriptParameter(2);

    // If no waypoint specified, set waypoint to SW_EXIT
    if (sWaypoint == "") sWaypoint = "SW_EXIT";

    // Move object to waypoint
    ActionForceMoveToObject(GetObjectByTag(sWaypoint), iRun);

    if (!iDelay)
    {
        // Queue the destroy command to go when the waypoint is reached
        ActionDoCommand(SetCommandable(TRUE));
        ActionDoCommand(DestroyObject(OBJECT_SELF));
        SetCommandable(FALSE);
    }
    // Destroy object after a delay
    else DelayCommand( IntToFloat(iDelay), DestroyObject( OBJECT_SELF ) );
}
