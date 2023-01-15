// k_kin_percept: Perception script for Kinrath and Viper Kinrath
// BMA-OEI 8/03/04

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    /*
    object oGland = GetObjectByTag("p_kinrath_gland");
    if (GetIsObjectValid(oGland))
    {
        object oOwner = GetItemPossessor(oGland);
        if (oOwner == GetFirstPC())
        {
            return; // Kinrath Sweat Gland is in Player's inventory
        }
    }
    */
    AurPostString("k_kin_percept: test for gland", 5, 7, 2.0);
    if (GetGlobalBoolean("604DAN_Has_SweatGland")) return;
    AurPostString("k_kin_percept: no gland! DIE!", 5, 8, 2.0);

    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_PERCEPTION);
}
