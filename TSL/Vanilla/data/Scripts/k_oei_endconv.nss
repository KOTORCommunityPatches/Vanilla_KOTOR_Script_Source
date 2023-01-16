//:: k_def_endconv
/*
     On End of Conversation Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2003 Bioware Corp.

#include "k_inc_switch"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_GLOBAL_DIALOGUE_END);
}



