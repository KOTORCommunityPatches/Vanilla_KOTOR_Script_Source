//  a_move_tag
/*
    A specified NPC walks or runs to wp_<tag> waypoint after a delay
    sTag     - The object to move
    iRun     - The flag for whether to run or not (0 = walk)
    iDelay   - The delay in seconds before the object will move
    iInst    - The instance of the object to move

    Note the NPC will move to a waypoint named "wp_<tag>". For example if the tag of
    the object is "R2D2" then the waypoint it will move to is "wp_R2D2".

*/
//  Created By:  Tony Evans 8/5/04

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    string sTag = GetScriptStringParameter();
    int iRun = GetScriptParameter(1);
    int iDelay = GetScriptParameter(2);
    int iInst = GetScriptParameter(3);

    if (sTag == "") sTag = GetTag(OBJECT_SELF);

    string sWaypoint = "wp_" + sTag;

    // Move object to waypoint
    DelayCommand( IntToFloat(iDelay), AssignCommand( GetObjectByTag(sTag, iInst), ActionForceMoveToObject(GetObjectByTag(sWaypoint), iRun) ) );

}

