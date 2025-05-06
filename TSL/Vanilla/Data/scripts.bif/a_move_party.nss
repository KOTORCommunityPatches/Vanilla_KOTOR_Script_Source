//  a_move_party
/*
    Causes the party to walk, run or jump to specified waypoints
    sWaypoint   - The tag of the waypoint to move to (default wp_pc)
                  Note, you should create 3 waypoints.  For example if sWaypoint == "wp_pc"
                  then the waypoints in the game should be wp_pc1, wp_pc2, wp_pc3
    iRun        - The flag for whether to walk, run or jump (0 = walk, 1 = run, 2 = jump)
    iDelay      - The delay in seconds before the party moves
    iInterval   - The interval in seconds between party members moving or jumping
*/
//  Created By:  Tony Evans 9/29/04

void main()
{
    string sWaypoint = GetScriptStringParameter();
    int iRun = GetScriptParameter(1);
    int iDelay = GetScriptParameter(2);
    int iInterval = GetScriptParameter(3);

    string sWPTag;
    object oWP;

    // If sWaypoint not given, use default "wp_pc"
    if (sWaypoint == "") sWaypoint = "wp_pc";

    SetPartyLeader(NPC_PLAYER);

    int i;
    for(i = 1; i < 4; i++)
    {
        object oPC = GetPartyMemberByIndex(i - 1);

        if(GetIsObjectValid(oPC))
        {
            sWPTag = sWaypoint + IntToString(i);
            oWP = GetObjectByTag(sWPTag);

            if(GetIsObjectValid(oWP))
            {
                DelayCommand(IntToFloat(iDelay + (iInterval * i)), AssignCommand(oPC, ClearAllActions()));

                // Jump to waypoint
                if (iRun == 2) DelayCommand(IntToFloat(iDelay + (iInterval * i)),
                    AssignCommand(oPC, ActionJumpToLocation(GetLocation(oWP))));

                // Walk/run to waypoint
                else DelayCommand(IntToFloat(iDelay + (iInterval * i)),
                    AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(oWP), iRun)));
            }
        }
    }
}
