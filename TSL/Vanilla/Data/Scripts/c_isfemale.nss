//:: c_isfemale
/*
    Returns TRUE is the player created character is FEMALE
*/

#include "k_inc_debug"

int StartingConditional()
{
    if(GetGlobalBoolean("000_PLAYER_GENDER") == FALSE)
        return TRUE;
    return FALSE;
}

