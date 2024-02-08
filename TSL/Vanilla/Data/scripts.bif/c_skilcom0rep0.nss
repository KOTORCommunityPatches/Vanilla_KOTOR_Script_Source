//:: FileName c_skilcom0rep0
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 11/12/2003 1:46:14 PM
//:: This script checks to see if the player has no Comp Use and no Repair.
//:://////////////////////////////////////////////
#include "k_inc_utility"

int StartingConditional()
{

    if(!GetHasSkill(SKILL_COMPUTER_USE, GetPCSpeaker()) & !GetHasSkill(SKILL_REPAIR, GetPCSpeaker()))
        return TRUE;

    return FALSE;
}
