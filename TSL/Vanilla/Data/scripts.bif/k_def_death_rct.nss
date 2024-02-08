//:: k_def_death_rct
/*
    Default On Death Script
    with psychotic companion reaction
*/

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript( "a_gbl_react", OBJECT_SELF, 0);
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_DEATH);
    /*
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        SpeakString("GEN_I_AM_DEAD", TALKVOLUME_SILENT_TALK);
        //Shout Attack my target, only works with the On Spawn In setup
        SpeakString("GEN_ATTACK_MY_TARGET", TALKVOLUME_SILENT_TALK);
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1007));
    }
    */
}
