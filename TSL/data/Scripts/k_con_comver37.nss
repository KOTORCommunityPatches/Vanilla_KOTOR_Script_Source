//:: k_con_comver37
/*
     Verify that a power conduit hasn't been
     blown up on this map yet.
*/
//:: Created By: Ferret Baudoin
//:: 1/7

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{

    return !GetLocalBoolean( GetModule(),20 );

}
