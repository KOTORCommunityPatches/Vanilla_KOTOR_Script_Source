//:: k_act_com36
/*
     Removes the correct amount of tokens
     and sets the boolean flag for Reveal Map
*/
//:: Created By: Ferret Baudoin
//:: FAB 1/7

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    int nAmount = UT_DeterminesItemCost(5, SKILL_COMPUTER_USE);
    UT_RemoveComputerSpikes(nAmount);
    SetLocalBoolean( GetModule(),21,TRUE);
    RevealMap();
}
