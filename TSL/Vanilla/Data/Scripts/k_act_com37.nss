//:: k_act_com37
/*
     Removes the correct amount of tokens
     and sets the boolean flag for Exploding Conduit
*/
//:: Created By: Ferret Baudoin
//:: FAB 1/7

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{

    int nAmount = UT_DeterminesItemCost(5, SKILL_COMPUTER_USE);
    UT_RemoveComputerSpikes(nAmount);
    SetLocalBoolean( GetModule(),20,TRUE );

}
