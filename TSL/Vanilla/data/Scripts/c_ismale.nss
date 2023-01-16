//:: c_ismale
/*
    Returns TRUE is the player created character is MALE
*/

#include "k_inc_debug"

int StartingConditional()
{
    if(GetGlobalBoolean("000_PLAYER_GENDER") == TRUE)
        return TRUE;
    return FALSE;
}

