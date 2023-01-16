//::///////////////////////////////////////////////
//:: FileName c_skilcomnorep
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 11/12/2003 1:46:14 PM
//:: This script checks to see if the player has any ranks in Computer Use
//:: and none in Repair (so both CU and Rep options don't show in dialogue).
//:://////////////////////////////////////////////
#include "k_inc_utility"
int StartingConditional()
{

    if(GetHasSkill(SKILL_COMPUTER_USE, GetPCSpeaker()) & !GetHasSkill(SKILL_REPAIR, GetPCSpeaker()))
        return TRUE;

    return FALSE;
}
