//  a_move_pc
/*
    The PC walks or runs to waypoint after a delay
    sWaypoint - The tag of the waypoint to move to (default "wp_pc")
    iRun      - The flag for whether to run or not (0 = walk)
    iDelay    - The delay in seconds before the object will move
*/
//  Created By:  Tony Evans 10/2/04

void main()
{
    string sWaypoint = GetScriptStringParameter();
    int iRun = GetScriptParameter(1);
    int iDelay = GetScriptParameter(2);

    // If no waypoint specified, set waypoint to "wp_pc>"
    if (sWaypoint == "") sWaypoint = "wp_pc";

    // Move PC to waypoint
    DelayCommand( IntToFloat(iDelay), AssignCommand(GetFirstPC(),
        ActionForceMoveToObject(GetObjectByTag(sWaypoint), iRun) ));
}

