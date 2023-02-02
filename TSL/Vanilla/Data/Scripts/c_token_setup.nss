//  c_token_setup
/*
    Sets up a token to use in a conversation to refer to the correct amount of
        parts/spikes something will cost, after optionally modified by skill

    iNum        The number of parts or spikes
    iSpikes     0 = repair parts, 1 = spikes
    iSkillMod   0 = skill not factored in, 1 = skill is factored in
    iToken      The number used for the custom token, default = iNum

    Use this script with c_parts_spikes and a_parts_spikes
*/
//  Created By: Tony Evans 8/9/04

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int iNum = GetScriptParameter(1);
    int iSpikes = GetScriptParameter(2);
    int iSkillMod = GetScriptParameter(3);
    int iToken = GetScriptParameter(4);
    int iType;
    int iCost;

    if (iSkillMod)
    {
        if (iSpikes) iType = SKILL_COMPUTER_USE;

        else iType = SKILL_REPAIR;

        iCost = UT_DeterminesItemCost(iNum, iType);
    }

    else (iCost = iNum);

    if (!iToken) iToken = iNum;

    SetCustomToken(iToken, IntToString(iCost));

    return TRUE;
}

