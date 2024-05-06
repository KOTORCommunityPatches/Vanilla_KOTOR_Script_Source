//:: k_con_comver36
/*
     Verify that the map hasn't been revealed elsewhere
*/
//:: Created By: Ferret Baudoin
//:: 1/7

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    return !GetLocalBoolean( GetModule(),21 );

}
