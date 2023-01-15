//:: k_oei_spawn
/*
    v1.0
    Default On Spawn In
*/
//:: Created By: Anthony Davis
#include "k_oei_hench_inc"
//#include "k_inc_generic"
#include "k_inc_debug"

void main()
{
    //BEGIN HENCHMEN default
    SetIsDestroyable(TRUE,TRUE,TRUE);
    GN_SetListeningPatterns();// Goes through and sets up which shouts the NPC will listen to.
    //END HENCHMEN default
    //****** BEGIN DEFAULT GENERIC BEHAVIOR (DO NOT TOUCH) ******
    GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
    // This function although poorly named sets up the listening patterns and other
    // important data for the creature it should never be removed.
    GN_SetListeningPatterns();
    SetLocalNumber(OBJECT_SELF, 11, 6);// FAK - OEI default turret cooldown
    //****** END DEFAULT GENERIC BEHAVIOR (DO NOT TOUCH) ******

    DoSpecialSpawnIn(OBJECT_SELF);
}
