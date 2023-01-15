//:: k_kin_endconv: Modification of k_def_endconv to handle Kinrath Sweat Gland.
// This is a fix for Kinrath becoming hostile/aggro after ending a conversation.
// BMA-OEI 8/03/04

#include "k_inc_debug"
#include "k_inc_switch"

void main()
{
    AurPostString("k_def_endconv: test for gland", 5, 9, 2.0);
    if (GetGlobalBoolean("604DAN_Has_SweatGland")) return;
    AurPostString("k_def_endconv: no gland! DIE!", 5, 10, 2.0);
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_GLOBAL_DIALOGUE_END);
}



