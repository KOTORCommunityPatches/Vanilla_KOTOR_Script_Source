//  c_parts_spikes
/*
    Checks to see if the player has a specified number of repair parts or spikes,
        optionally modified by skill

    iNum    The number of parts or spikes
    iSpikes 0 = repair parts, 1 = spikes
    iSkillMod  0 = skill not factored in, 1 = skill is factored in

    Use c_token_setup to setup tokens beforehand
*/
//  Created By: Tony Evans 8/9/04

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int iNum = GetScriptParameter(1);
    int iSpikes = GetScriptParameter(2);
    int iSkillMod = GetScriptParameter(3);
    int iType;
    int iCost;

    if (iSpikes) iType = SKILL_COMPUTER_USE;

    else iType = SKILL_REPAIR;

    if (iSkillMod) iCost = UT_DeterminesItemCost(iNum, iType);

    else (iCost = iNum);

    AurPostString("Spikes = " + IntToString(UT_ReturnSpikePartAmount(iType)) + " Cost = " +  IntToString(iCost), 5, 5, 5.0);

    if(UT_ReturnSpikePartAmount(iType) >= iCost)
    {
        return TRUE;
    }
    return FALSE;
}

